<?php
/**
 * Helpers pour les notes produits (tbl_rating).
 *
 * Objectifs :
 *  - Supprimer le problème N+1 : les notes de TOUS les produits d'une liste
 *    sont chargées en UNE seule requête (fetch_ratings_bulk).
 *  - Mutualiser le rendu du bloc étoiles (render_rating_stars), identique
 *    sur toutes les pages, à la place des ~80 lignes dupliquées par page.
 *
 * À inclure après config.php (a besoin de $pdo).
 */

if (!defined('RATING_HELPERS_LOADED')) {
    define('RATING_HELPERS_LOADED', 1);

    /**
     * Charge en une requête le total et la moyenne des notes pour une liste
     * de produits.
     *
     * @param PDO   $pdo        Connexion PDO
     * @param array $productIds Identifiants produits (p_id)
     *
     * @return array Tableau associatif p_id => ['total' => int, 'avg' => float]
     */
    function fetch_ratings_bulk($pdo, $productIds)
    {
        $productIds = array_values(array_unique(array_filter(array_map('intval', $productIds))));
        if (empty($productIds)) {
            return array();
        }

        $placeholders = implode(',', array_fill(0, count($productIds), '?'));
        $statement = $pdo->prepare(
            "SELECT p_id, COUNT(*) AS total, SUM(rating) AS sum_rating
             FROM tbl_rating
             WHERE p_id IN ($placeholders)
             GROUP BY p_id"
        );
        $statement->execute($productIds);

        $ratings = array();
        foreach ($statement->fetchAll(PDO::FETCH_ASSOC) as $row) {
            $total = (int)$row['total'];
            $ratings[(int)$row['p_id']] = array(
                'total' => $total,
                'avg'   => $total > 0 ? ((float)$row['sum_rating']) / $total : 0.0,
            );
        }
        return $ratings;
    }

    /**
     * Moyenne d'un seul produit (ex-fiche produit, avis...).
     *
     * @return array ['total' => int, 'avg' => float]
     */
    function get_product_avg_rating($pdo, $productId)
    {
        $statement = $pdo->prepare("SELECT COUNT(*) AS total, COALESCE(SUM(rating),0) AS sum_rating FROM tbl_rating WHERE p_id=?");
        $statement->execute(array((int)$productId));
        $row = $statement->fetch(PDO::FETCH_ASSOC);
        $total = (int)$row['total'];
        return array(
            'total' => $total,
            'avg'   => $total > 0 ? ((float)$row['sum_rating']) / $total : 0.0,
        );
    }

    /**
     * Rendu du bloc étoiles, strictement fidèle au comportement d'origine :
     *  - moyenne 0            -> rien d'affiché
     *  - demi-points 1.5..4.5 -> les motifs exacts d'origine (demi-étoile à la bonne position)
     *  - entiers et autres    -> 5 icônes, pleine si $i <= moyenne, vide sinon
     *
     * @param float $avg Moyenne des notes
     *
     * @return string HTML du bloc (icônes FontAwesome)
     */
    function render_rating_stars($avg)
    {
        $avg = (float)$avg;

        if ($avg == 0) {
            return '';
        }

        // Motifs exacts conservés du code d'origine (cas des demi-notes).
        // Clés en CHAÎNE : PHP tronque les clés flottantes en int (1.5 -> 1),
        // ce qui ferait matcher 3 et 4.67 sur de mauvais motifs.
        $halfPatterns = array(
            '1.5' => '<i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>',
            '2.5' => '<i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                    <i class="fa fa-star-o"></i>',
            '3.5' => '<i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>',
            '4.5' => '<i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>',
        );

        $avgKey = (string)$avg;
        if (isset($halfPatterns[$avgKey])) {
            return $halfPatterns[$avgKey];
        }

        $html = '';
        for ($i = 1; $i <= 5; $i++) {
            $html .= ($i > $avg)
                ? '<i class="fa fa-star-o"></i>'
                : '<i class="fa fa-star"></i>';
        }
        return $html;
    }
}
