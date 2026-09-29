<?php
ob_start();
include("../../admin/inc/config.php");
secure_session_start();
include("../../admin/inc/functions.php");
// Getting all language variables into array as global variable
$i=1;
$statement = $pdo->prepare("SELECT * FROM tbl_language");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	define('LANG_VALUE_'.$i,$row['lang_value']);
	$i++;
}
?>
<?php
if( !isset($_REQUEST['msg']) ) {
	if(!isset($_SESSION['customer']) || !isset($_SESSION['cart_p_id']) || empty($_POST['transaction_info'])) {
		header('location: ../../checkout.php');
	} else {
		// Sécurité : le montant payé est recalculé depuis la base de données
		// (les prix en session proviennent d'un POST modifiable côté client).
		$i = 0;
		foreach($_SESSION['cart_p_id'] as $key => $value) {
			$i++;
			$bank_cart_p_id[$i] = (int)$value;
			$bank_cart_keys[$i] = $key;
			$bank_cart_qty[$i] = (int)$_SESSION['cart_p_qty'][$key];
		}
		$server_total = 0;
		$statement = $pdo->prepare("SELECT p_id, p_name, p_current_price, p_featured_photo FROM tbl_product WHERE p_id=?");
		for($i=1;$i<=count($bank_cart_p_id);$i++) {
			$statement->execute(array($bank_cart_p_id[$i]));
			$prod = $statement->fetch(PDO::FETCH_ASSOC);
			if(!$prod) {
				header('location: ../../cart.php');
				exit;
			}
			$_SESSION['cart_p_current_price'][$bank_cart_keys[$i]] = $prod['p_current_price'];
			$_SESSION['cart_p_name'][$bank_cart_keys[$i]] = $prod['p_name'];
			$_SESSION['cart_p_featured_photo'][$bank_cart_keys[$i]] = $prod['p_featured_photo'];
			$server_total += $prod['p_current_price'] * $bank_cart_qty[$i];
		}
		unset($bank_cart_p_id, $bank_cart_keys, $bank_cart_qty, $prod);

		// Frais de livraison (même logique que checkout.php)
		$statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost WHERE country_id=?");
		$statement->execute(array($_SESSION['customer']['cust_country']));
		$shipping_row = $statement->fetch(PDO::FETCH_ASSOC);
		if($shipping_row) {
			$server_total += $shipping_row['amount'];
		} else {
			$statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost_all WHERE sca_id=1");
			$statement->execute();
			$shipping_row = $statement->fetch(PDO::FETCH_ASSOC);
			if($shipping_row) {
				$server_total += $shipping_row['amount'];
			}
		}
		unset($shipping_row);

		$payment_date = date('Y-m-d H:i:s');
	    $payment_id = time();

	    $statement = $pdo->prepare("INSERT INTO tbl_payment (   
	                            customer_id,
	                            customer_name,
	                            customer_email,
	                            payment_date,
	                            txnid, 
	                            paid_amount,
	                            card_number,
	                            card_cvv,
	                            card_month,
	                            card_year,
	                            bank_transaction_info,
	                            payment_method,
	                            payment_status,
	                            shipping_status,
	                            payment_id
	                        ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	    $statement->execute(array(
	                            $_SESSION['customer']['cust_id'],
	                            $_SESSION['customer']['cust_name'],
	                            $_SESSION['customer']['cust_email'],
	                            $payment_date,
	                            '',
	                            $server_total,
	                            '', 
	                            '',
	                            '', 
	                            '',
	                            strip_tags($_POST['transaction_info']),
	                            'Bank Deposit',
	                            'Pending',
	                            'Pending',
	                            $payment_id
	                        ));

	    $i=0;
	    foreach($_SESSION['cart_p_id'] as $key => $value) 
	    {
	        $i++;
	        $arr_cart_p_id[$i] = $value;
	    }

	    $i=0;
	    foreach($_SESSION['cart_p_name'] as $key => $value) 
	    {
	        $i++;
	        $arr_cart_p_name[$i] = $value;
	    }

	    $i=0;
	    foreach($_SESSION['cart_size_name'] as $key => $value) 
	    {
	        $i++;
	        $arr_cart_size_name[$i] = $value;
	    }

	    $i=0;
	    foreach($_SESSION['cart_color_name'] as $key => $value) 
	    {
	        $i++;
	        $arr_cart_color_name[$i] = $value;
	    }

	    $i=0;
	    foreach($_SESSION['cart_p_qty'] as $key => $value) 
	    {
	        $i++;
	        $arr_cart_p_qty[$i] = $value;
	    }

	    $i=0;
	    foreach($_SESSION['cart_p_current_price'] as $key => $value) 
	    {
	        $i++;
	        $arr_cart_p_current_price[$i] = $value;
	    }

	    $i=0;
	    $statement = $pdo->prepare("SELECT * FROM tbl_product");
	    $statement->execute();
	    $result = $statement->fetchAll(PDO::FETCH_ASSOC);							
	    foreach ($result as $row) {
	    	$i++;
	    	$arr_p_id[$i] = $row['p_id'];
	    	$arr_p_qty[$i] = $row['p_qty'];
	    }

	    for($i=1;$i<=count($arr_cart_p_name);$i++) {
	        $statement = $pdo->prepare("INSERT INTO tbl_order (
	                        product_id,
	                        product_name,
	                        size, 
	                        color,
	                        quantity, 
	                        unit_price, 
	                        payment_id
	                        ) 
	                        VALUES (?,?,?,?,?,?,?)");
	        $sql = $statement->execute(array(
	                        $arr_cart_p_id[$i],
	                        $arr_cart_p_name[$i],
	                        $arr_cart_size_name[$i],
	                        $arr_cart_color_name[$i],
	                        $arr_cart_p_qty[$i],
	                        $arr_cart_p_current_price[$i],
	                        $payment_id
	                    ));

	        // Update the stock
            for($j=1;$j<=count($arr_p_id);$j++)
            {
                if($arr_p_id[$j] == $arr_cart_p_id[$i]) 
                {
                    $current_qty = $arr_p_qty[$j];
                    break;
                }
            }
            $final_quantity = $current_qty - $arr_cart_p_qty[$i];
            $statement = $pdo->prepare("UPDATE tbl_product SET p_qty=? WHERE p_id=?");
            $statement->execute(array($final_quantity,$arr_cart_p_id[$i]));
            
	    }
	    unset($_SESSION['cart_p_id']);
	    unset($_SESSION['cart_size_id']);
	    unset($_SESSION['cart_size_name']);
	    unset($_SESSION['cart_color_id']);
	    unset($_SESSION['cart_color_name']);
	    unset($_SESSION['cart_p_qty']);
	    unset($_SESSION['cart_p_current_price']);
	    unset($_SESSION['cart_p_name']);
	    unset($_SESSION['cart_p_featured_photo']);

	    header('location: ../../payment_success.php');
	}
}
?>