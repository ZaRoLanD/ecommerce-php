<?php
/**
 * Helpers de sécurité partagés (client + admin).
 *
 * Inclure via : require_once(__DIR__ . '/security.php');
 * depuis admin/inc/config.php, admin/login.php, admin/header.php,
 * payment/paypal/payment_process.php et payment/bank/init.php.
 */

if (!defined('SECURITY_HELPERS_LOADED')) {
    define('SECURITY_HELPERS_LOADED', 1);

    /* ========================= Mots de passe ========================= */

    /**
     * Hache un mot de passe avec l'algorithme moderne de PHP.
     */
    function hash_password_secure($password)
    {
        return password_hash($password, PASSWORD_DEFAULT);
    }

    /**
     * Vérifie un mot de passe.
     *
     * Accepte à la fois les nouveaux hachages password_hash() et les
     * anciens hachages MD5 (32 caractères hexadécimaux) pour assurer la
     * compatibilité avec les comptes existants.
     *
     * IMPORTANT : à chaque connexion réussie avec un ancien hachage MD5,
     * appeler upgrade_legacy_password_hash() pour migrer le compte.
     */
    function verify_password_secure($password, $hash)
    {
        if (is_string($hash) && preg_match('/^[0-9a-f]{32}$/i', $hash)) {
            // Ancien hachage MD5 (comptes existants) : comparer, la migration
            // vers bcrypt se fera à la prochaine connexion.
            return hash_equals(strtolower($hash), md5($password));
        }
        return password_verify($password, $hash);
    }

    /**
     * Vérifie si le hachage stocké est encore un ancien MD5
     * (nécessite une mise à niveau vers password_hash).
     */
    function is_legacy_password_hash($hash)
    {
        return is_string($hash) && preg_match('/^[0-9a-f]{32}$/i', $hash);
    }

    /**
     * Met à jour le mot de passe d'un compte vers password_hash()
     * après une connexion réussie avec un ancien hachage MD5.
     *
     * $table, $password_column et $id_column sont des constantes du code
     * (jamais des entrées utilisateur), l'interpolation est donc sûre ici.
     */
    function upgrade_legacy_password_hash($pdo, $table, $password_column, $id_column, $id, $password)
    {
        $statement = $pdo->prepare("UPDATE {$table} SET {$password_column} = ? WHERE {$id_column} = ?");
        $statement->execute(array(hash_password_secure($password), $id));
    }

    /* ========================= Sessions ========================= */

    /**
     * Démarre une session sécurisée (cookies HttpOnly, SameSite Lax,
     * régénération d'ID à la connexion).
     */
    function secure_session_start()
    {
        if (session_status() === PHP_SESSION_ACTIVE) {
            return;
        }
        if (session_id() !== '') {
            return;
        }
        if (PHP_SAPI === 'cli') {
            session_start();
            return;
        }
        if (headers_sent()) {
            session_start();
            return;
        }
        session_set_cookie_params(array(
            'lifetime' => 0,
            'path'     => '/',
            'secure'   => !empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off',
            'httponly' => true,
            'samesite' => 'Lax',
        ));
        session_name('ECOMSECID');
        session_start();
    }

    /**
     * À appeler juste après une authentification réussie (client ou admin).
     */
    function secure_session_regenerate_id()
    {
        if (PHP_SAPI !== 'cli' && !headers_sent()) {
            session_regenerate_id(true);
        }
    }

    /* ========================= Échappement HTML ========================= */

    /**
     * Échappe une chaîne pour un affichage HTML sûr.
     */
    function e($value)
    {
        return htmlspecialchars((string)$value, ENT_QUOTES, 'UTF-8');
    }

    /**
     * Échappe une chaîne pour un contexte attribut HTML.
     * (alias de e(), utile pour la lisibilité)
     */
    function e_attr($value)
    {
        return e($value);
    }
}
