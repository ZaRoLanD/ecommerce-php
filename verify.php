<?php require_once('header.php'); ?>

<?php
// Sécurité : le token est désormais OBLIGATOIRE. Avant, le lien sans token
// activait directement le compte (contournement de la vérification d'email).
if ( (!isset($_REQUEST['email'])) || (!isset($_REQUEST['token'])) )
{
    header('location: '.BASE_URL);
    exit;
}

// check if the token is correct and match with database.
$statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
$statement->execute(array($_REQUEST['email']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
$token_found = 0;
foreach ($result as $row) {
    if( (string)$_REQUEST['token'] === (string)$row['cust_token'] && $row['cust_token'] != '' ) {
        $token_found = 1;
    }
}
if(!$token_found) {
    header('location: '.BASE_URL);
    exit;
}

// everything is correct. now activate the user removing token value from database.
$statement = $pdo->prepare("UPDATE tbl_customer SET cust_token=?, cust_status=? WHERE cust_email=?");
$statement->execute(array('',1,$_GET['email']));

$success_message = '<p style="color:green;">'.LANG_VALUE_137.'</p><p><a href="'.BASE_URL.'login.php" style="color:#167ac6;font-weight:bold;">'.LANG_VALUE_11.'</a></p>';
?>

<div class="page-banner" style="background-color:#444;">
    <div class="inner">
        <h1><?php echo LANG_VALUE_17; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content">
                    <?php 
                        echo $error_message;
                        echo $success_message;
                    ?>
                </div>                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>