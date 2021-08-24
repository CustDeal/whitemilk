<?php
include_once("includes/crud.php");
$connect_db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($connect_db->connect_error) {
    die("Connection failed: ". $connect_db->connect_error);
    echo("DataBase Is Not Connected");
}

$prefix = "90";

$get_barcode_status = mysqli_query($connect_db, "SELECT * FROM product_variant WHERE barcode is null");
if(mysqli_num_rows($get_barcode_status) > 0)
{
	while($barcode_status = mysqli_fetch_array($get_barcode_status))
	{
	$get_product_status = mysqli_query($connect_db, "SELECT * FROM products WHERE id='".$barcode_status['product_id']."'");
	if(mysqli_num_rows($get_product_status) > 0)
	{
		$product_status = mysqli_fetch_array($get_product_status);
		
		$count_product = strlen($product_status['id']);
		if($count_product<=0)
		{
			$product_id = "000";
			$p_id = substr($product_id, 0, 3);
		}
		elseif($count_product===1)
		{
			$product_id = "00".$product_status['id'];
			$p_id = substr($product_id, 0, 3);
		}
		elseif($count_product===2)
		{
			$product_id = "0".$product_status['id'];
			$p_id = substr($product_id, 0, 3);
		}
		elseif($count_product>=3)
		{
			$product_id = $product_status['id'];
			$p_id = substr($product_id, 0, 3);
		}



		$count_cat = strlen($product_status['category_id']);
		if($count_cat<=0)
		{
			$cat_id = "000";
			$c_id = substr($cat_id, 0, 2);
		}
		elseif($count_cat===1)
		{
			$cat_id = "00".$product_status['category_id'];
			$c_id = substr($cat_id, 0, 2);
		}
		elseif($count_cat===2)
		{
			$cat_id = "0".$product_status['category_id'];
			$c_id = substr($cat_id, 0, 2);
		}
		elseif($count_cat>=3)
		{
			$cat_id = $product_status['category_id'];
			$c_id = substr($cat_id, 0, 2);
		}

		$count_sub_cat = strlen($product_status['subcategory_id']);
		if($count_sub_cat<=0)
		{
			$sub_cat_id = "000";
			$s_c_id = substr($sub_cat_id, 0, 2);
		}
		elseif($count_sub_cat===1)
		{
			$sub_cat_id = "00".$product_status['subcategory_id'];
			$s_c_id = substr($sub_cat_id, 0, 2);
		}
		elseif($count_sub_cat===2)
		{
			$sub_cat_id = "0".$product_status['subcategory_id'];
			$s_c_id = substr($sub_cat_id, 0, 2);
		}
		elseif($count_sub_cat>=3)
		{
			$sub_cat_id = $product_status['subcategory_id'];
			$s_c_id = substr($sub_cat_id, 0, 2);
		}

		$count_varient = strlen($barcode_status['id']);
		if($count_varient<=0)
		{
			$varient_id = "000";
			$v_id = substr($varient_id, 0, 3);
		}
		elseif($count_varient===1)
		{
			$varient_id = "00".$barcode_status['id'];
			$v_id = substr($varient_id, 0, 3);
		}
		elseif($count_varient===2)
		{
			$varient_id = "0".$barcode_status['id'];
			$v_id = substr($varient_id, 0, 3);
		}
		elseif($count_varient>=3)
		{
			$varient_id = $barcode_status['id'];
			$v_id = substr($varient_id, 0, 3);
		}
		
	$barcode = $prefix."".$c_id."".$s_c_id."".$p_id."".$v_id;
	$update_barcode = mysqli_query($connect_db, "UPDATE product_variant SET barcode='$barcode' WHERE id='".$barcode_status['id']."'");

	}
	}

	
	
}
?>