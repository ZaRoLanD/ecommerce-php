<?php require_once('header.php'); ?>

<?php
if(!isset($_REQUEST['search_text'])) {
    header('location: index.php');
    exit;
} else {
	if($_REQUEST['search_text']=='') {
		header('location: index.php');
    	exit;
	}
}
?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_search = $row['banner_search'];
}
?>

<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $banner_search; ?>);">
    <div class="overlay"></div>
    <div class="inner">
        <h1>
            Recherche : 
            <?php 
                $search_text = strip_tags($_REQUEST['search_text']); 
                echo e($search_text); 
            ?>            
        </h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product product-cat">

                    <div class="row">
                        <?php
                            $search_text = '%'.$search_text.'%';
                        ?>

			<?php
            /* ===================== Pagination Code Starts ================== */
            $adjacents = 5;
            $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_is_active=? AND p_name LIKE ?");
            $statement->execute(array(1,$search_text));
            $total_pages = $statement->rowCount();

            $targetpage = BASE_URL.'search-result.php?search_text='.urlencode($_REQUEST['search_text']);   //your file name  (the name of this file)
            $limit = 12;                                 //how many items to show per page
            $page = @$_GET['page'];
            if($page) 
                $start = ($page - 1) * $limit;          //first item to display on this page
            else
                $start = 0;
            

            $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_is_active=? AND p_name LIKE ? LIMIT $start, $limit");
            $statement->execute(array(1,$search_text));
            $result = $statement->fetchAll(PDO::FETCH_ASSOC);

            // Anti N+1 : les notes de tous les produits de la page en 1 requête.
            $ratings_map = fetch_ratings_bulk($pdo, array_column($result, 'p_id'));
           
            
            if ($page == 0) $page = 1;                  //if no page var is given, default to 1.
            $prev = $page - 1;                          //previous page is page - 1
            $next = $page + 1;                          //next page is page + 1
            $lastpage = ceil($total_pages/$limit);      //lastpage is = total pages / items per page, rounded up.
            $lpm1 = $lastpage - 1;   
            $pagination = "";
            if($lastpage > 1)
            {   
                $pagination .= "<div class=\"pagination\">";
                if ($page > 1) 
                    $pagination.= "<a href=\"$targetpage&page=$prev\">&#171; Précédent</a>";
                else
                    $pagination.= "<span class=\"disabled\">&#171; Précédent</span>";    
                if ($lastpage < 7 + ($adjacents * 2))   //not enough pages to bother breaking it up
                {   
                    for ($counter = 1; $counter <= $lastpage; $counter++)
                    {
                        if ($counter == $page)
                            $pagination.= "<span class=\"current\">$counter</span>";
                        else
                            $pagination.= "<a href=\"$targetpage&page=$counter\">$counter</a>";                 
                    }
                }
                elseif($lastpage > 5 + ($adjacents * 2))    //enough pages to hide some
                {
                    if($page < 1 + ($adjacents * 2))        
                    {
                        for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
                        {
                            if ($counter == $page)
                                $pagination.= "<span class=\"current\">$counter</span>";
                            else
                                $pagination.= "<a href=\"$targetpage&page=$counter\">$counter</a>";                 
                        }
                        $pagination.= "...";
                        $pagination.= "<a href=\"$targetpage&page=$lpm1\">$lpm1</a>";
                        $pagination.= "<a href=\"$targetpage&page=$lastpage\">$lastpage</a>";       
                    }
                    elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
                    {
                        $pagination.= "<a href=\"$targetpage&page=1\">1</a>";
                        $pagination.= "<a href=\"$targetpage&page=2\">2</a>";
                        $pagination.= "...";
                        for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
                        {
                            if ($counter == $page)
                                $pagination.= "<span class=\"current\">$counter</span>";
                            else
                                $pagination.= "<a href=\"$targetpage&page=$counter\">$counter</a>";                 
                        }
                        $pagination.= "...";
                        $pagination.= "<a href=\"$targetpage&page=$lpm1\">$lpm1</a>";
                        $pagination.= "<a href=\"$targetpage&page=$lastpage\">$lastpage</a>";       
                    }
                    else
                    {
                        $pagination.= "<a href=\"$targetpage&page=1\">1</a>";
                        $pagination.= "<a href=\"$targetpage&page=2\">2</a>";
                        $pagination.= "...";
                        for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
                        {
                            if ($counter == $page)
                                $pagination.= "<span class=\"current\">$counter</span>";
                            else
                                $pagination.= "<a href=\"$targetpage&page=$counter\">$counter</a>";                 
                        }
                    }
                }
                if ($page < $counter - 1) 
                    $pagination.= "<a href=\"$targetpage&page=$next\">Suivant &#187;</a>";
                else
                    $pagination.= "<span class=\"disabled\">Suivant &#187;</span>";
                $pagination.= "</div>\n";       
            }
            /* ===================== Pagination Code Ends ================== */
            ?>

                        <?php
                            
                            if(!$total_pages):
                                echo '<span style="color:red;font-size:18px;">Aucun résultat trouvé</span>';
                            else:
                            foreach ($result as $row) {
                                ?>
                                <div class="col-md-3 item item-search-result">
                                    <div class="inner">
                                        <div class="thumb">
                                            <div class="photo" style="background-image:url(assets/uploads/<?php echo $row['p_featured_photo']; ?>);"></div>
                                            <div class="overlay"></div>
                                        </div>
                                        <div class="text">
                                            <h3><a href="product.php?id=<?php echo $row['p_id']; ?>"><?php echo e($row['p_name']); ?></a></h3>
                                            <h4>
                                                $<?php echo $row['p_current_price']; ?> 
                                                <?php if($row['p_old_price'] != ''): ?>
                                                <del>
                                                    $<?php echo $row['p_old_price']; ?>
                                                </del>
                                                <?php endif; ?>
                                            </h4>                                                <div class="rating">
                                                    <?php echo render_rating_stars(isset($ratings_map[(int)$row['p_id']]) ? $ratings_map[(int)$row['p_id']]['avg'] : 0); ?>
                                                </div>
                                            <?php if($row['p_qty'] == 0): ?>
                                                <div class="out-of-stock">
                                                    <div class="inner">
                                                        Rupture de stock
                                                    </div>
                                                </div>
                                            <?php else: ?>
                                                <p><a href="product.php?id=<?php echo $row['p_id']; ?>"><?php echo LANG_VALUE_154; ?></a></p>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                            ?>
                            <div class="clear"></div>
							<div class="pagination">
                            <?php 
                                echo $pagination; 
                            ?>
                            </div>
                            <?php
                            endif;
                        ?>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>