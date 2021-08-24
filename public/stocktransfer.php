<?php
include_once('includes/functions.php');

include_once('includes/crud.php');

$connect_db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($connect_db->connect_error) {
    die("Connection failed: ". $connect_db->connect_error);
    echo("DataBase Is Not Connected");
}

if(isset($_POST['btn_approve']))
{
	$TranferID = mysqli_escape_string($connect_db, $_POST['TranferID']); 
	$ProductCode = mysqli_escape_string($connect_db, $_POST['ProductCode']); 
	$VarientCode = mysqli_escape_string($connect_db, $_POST['VarientCode']); 	
	$Quantity = mysqli_escape_string($connect_db, $_POST['Quantity']); 
	$Price = mysqli_escape_string($connect_db, $_POST['Price']); 
	$DiscountPrice = mysqli_escape_string($connect_db, $_POST['DiscountPrice']); 
	$VerifiedBy = mysqli_escape_string($connect_db, $_SESSION['id']); 
	$BranchID = mysqli_escape_string($connect_db, $_POST['ToBranch']); 
	$from_branch = mysqli_escape_string($connect_db, $_POST['FromBranch']); 
	$error = "";
	date_default_timezone_set('Asia/Kolkata');
	$Verifieddatetime = date('d-m-Y H:i:s');
	
	$get_insert_product = mysqli_query($connect_db, "SELECT * FROM products WHERE id='$ProductCode'");
	if(mysqli_num_rows($get_insert_product) > 0)
	{
		$insert_product = mysqli_fetch_array($get_insert_product);
	}
	else
	{
		$error = "Product Not Found";
	}

	$get_insert_varient = mysqli_query($connect_db, "SELECT * FROM product_variant WHERE id='$VarientCode'");
	if(mysqli_num_rows($get_insert_varient) > 0)
	{
		$insert_varient = mysqli_fetch_array($get_insert_varient);
	}
	else
	{
		$error = "Product Varient Not Found";
	}
	
if(empty($error))
{
	$confirm_product = mysqli_query($connect_db, "INSERT INTO products (row_order, name, tax_id, slug, category_id, subcategory_id, indicator, manufacturer, made_in, return_status, cancelable_status, till_status, image, other_images, size_chart, description, shipping_delivery, status, ratings, number_of_ratings, BranchID, from_branch ) VALUES ('".$insert_product['row_order']."', '".$insert_product['name']."', '".$insert_product['tax_id']."', '".$insert_product['slug']."', '".$insert_product['category_id']."', '".$insert_product['subcategory_id']."', '".$insert_product['indicator']."', '".$insert_product['manufacturer']."', '".$insert_product['made_in']."', '".$insert_product['return_status']."', '".$insert_product['cancelable_status']."', '".$insert_product['till_status']."', '".$insert_product['image']."', '".$insert_product['other_images']."', '".$insert_product['size_chart']."', '".$insert_product['description']."', '".$insert_product['shipping_delivery']."', '".$insert_product['status']."', '".$insert_product['ratings']."', '".$insert_product['number_of_ratings']."', '$BranchID','$from_branch' )");
	
	if($confirm_product===true)
	{
		$productID = mysqli_insert_id($connect_db);
	}
	else
	{
		$error = "Product Not Added due to ". mysqli_error($connect_db);
	}
}

if(empty($error))
{
	$confirm_product_variant = mysqli_query($connect_db, "INSERT INTO product_variant (product_id, type, measurement, measurement_unit_id, price, discounted_price, serve_for, stock, stock_unit_id, BranchID, from_branch) VALUES ('$productID', '".$insert_varient['type']."', '$VarientCode', '".$insert_varient['measurement_unit_id']."', '$Price', '$DiscountPrice', '".$insert_varient['serve_for']."', '$Quantity', '".$insert_varient['stock_unit_id']."', '$BranchID','$from_branch')");
	
	if($confirm_product_variant===true)
	{
		$confirm_verified = mysqli_query($connect_db, "UPDATE branchstockverifyitems SET isreceived='1', VerifiedBy='$VerifiedBy', Verifieddatetime='$Verifieddatetime' WHERE TranferID='$TranferID' AND ProductCode='$ProductCode' AND VarientCode='$VarientCode'");
		if($confirm_verified===true)
		{
			$success ='Product Added Successfully.';
		}
		else
		{
			$error = "Product Added but status not updated due to ". mysqli_error($connect_db);
		}

	}
	else
	{
		$error = "Product Varient Not Added due to ". mysqli_error($connect_db);
	}
}

}
?>
<link rel="staylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="staylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap.min.css">
<section class="content-header">
    <h1>Stock Transfer Report /<small><a href="home.php"><i class="fa fa-home"></i> Home</a></small></h1>
</section>

    <!-- Main content -->
    <section class="content">
        <!-- Main row -->
        <div class="row">
            <div class="col-xs-12">
<?php 
if(isset($success))
{
	if(!empty($success) && $success!=null)
	{
		echo $success;
		$success="";
	}
}

if(isset($error))
{
	if(!empty($error) && $error!=null)
	{
		echo $error;
		$error="";
	}
}
?>
			</div>
<?php if($role != "POS") { ?>
            <!-- Left col -->
			<form id="save_info" name="save_info" method="post" action="">
						<div class="col-md-4">
							<label class="control-label" for="txt_branchpos">Branch / POS Name</label><i class="text-danger asterik">*</i>
							<select id='txt_branchpos' name="txt_branchpos" class="form-control select" required data-placeholder="Select Product Name" onchange="submitForm()">
								<option value="0" <?php if(isset($_POST['txt_branchpos'])){ if("0"===$_POST['txt_branchpos']){echo " selected ";}} ?>> ALL </option>
<?php
$get_branchpos_group = mysqli_query($connect_db, "SELECT * FROM branch_register group by BranchName order by BranchName asc");
while($branchpos_group = mysqli_fetch_array($get_branchpos_group))
{
	echo '<option value="'.$branchpos_group['BranchID'].'"';
	if(isset($_POST['txt_branchpos'])){ if($branchpos_group['BranchID']===$_POST['txt_branchpos']){echo " selected ";}}
	echo '>'.$branchpos_group['BranchName'].'</option>';
}
?>

							</select><br/><br/>
						</div>

						</form>
<?PHP } ?>
            <div class="col-xs-12">
                <div class="box">

                    <div class="box-body table-responsive">
<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Transfer ID</th>
                <th>From Branch</th>
                <th>To Branch</th>
                <th>Product Name</th>
                <th>Item Details</th>
                <th>Transfer Date</th>
                <th>Verified Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
<?php
$where = "";

if (isset($_POST['txt_branchpos']))
{
	if($_POST['txt_branchpos']!="0")
	{
		$where.= " AND ToBranch='".$_POST['txt_branchpos']."' OR FromBranch='".$_POST['txt_branchpos']."'";
	}
	else
	{
		$where.="";
	}
}
if($role==="POS")
{
	$where.= " AND ToBranch='".$_SESSION['BranchIDLog']."' OR FromBranch='".$_SESSION['BranchIDLog']."'";
}


$get_tansfer_items = mysqli_query($connect_db, "SELECT * FROM branchstockverifyitems ");
if(mysqli_num_rows($get_tansfer_items)>0)
{
	while($tansfer_items = mysqli_fetch_array($get_tansfer_items))
	{
		$get_tansfer_ = mysqli_query($connect_db, "SELECT * FROM branchstockverify where TranferID='".$tansfer_items['TranferID']."' $where");
		if(mysqli_num_rows($get_tansfer_) >0){
		$transfer = mysqli_fetch_array($get_tansfer_);
		
		$get_frombranch = mysqli_query($connect_db, "SELECT BranchName FROM branch_register where BranchID='".$transfer['FromBranch']."' ");
		$frombranch = mysqli_fetch_array($get_frombranch);
		
		$get_tobranch = mysqli_query($connect_db, "SELECT BranchName FROM branch_register where BranchID ='".$transfer['ToBranch']."' ");
		$tobranch = mysqli_fetch_array($get_tobranch);

		$get_product = mysqli_query($connect_db, "SELECT * FROM products WHERE id='".$tansfer_items['ProductCode']."'");
		if(mysqli_num_rows($get_product)>0)
		{
			$product = mysqli_fetch_array($get_product);
			
			$get_varient = mysqli_query($connect_db, "SELECT a.measurement, a.measurement_unit_id, b.name as unitname FROM product_variant as a INNER JOIN unit as b ON a.measurement_unit_id=b.id  WHERE a.id='".$tansfer_items['VarientCode']."'");
			if(mysqli_num_rows($get_varient)>0)
			{
				$varient = mysqli_fetch_array($get_varient);

				echo "<tr>";
				
				echo "<td>";
				echo $tansfer_items['TranferID'];
				echo "</td>";
				
				echo "<td>";
				echo $frombranch['BranchName'];
				echo "</td>";
				
				echo "<td>";
				echo $tobranch['BranchName'];
				echo "</td>";
				
				echo "<td>";
				echo $product['name'];
				echo "</td>";
				
				echo "<td>";
				echo $tansfer_items['Quantity']." ".$varient['unitname'];
				echo "</td>";
				
				echo "<td>";
$date=date_create($tansfer_items['TransferDate']);
echo date_format($date,"d-m-Y");
				echo "</td>";
				
				echo "<td>";
if(!empty($tansfer_items['VerifiedBy']) && $tansfer_items['VerifiedBy']!=null){ echo "<span class='btn' style='color:white; background-color:green !important'>Verified</span>";}
else
{
	echo "<span class='btn' style='color:white; background-color:red !important;'>Pending</span>";
}
				echo "</td>";
				
				echo "<td>";
if($transfer['ToBranch']===$_SESSION['BranchIDLog'] && empty($tansfer_items['VerifiedBy']) && $tansfer_items['VerifiedBy']===null){
echo "
<form method='post' action=''>
<input type='hidden' value='".$transfer['ToBranch']."' required name='ToBranch' id='ToBranch'>
<input type='hidden' value='".$transfer['FromBranch']."' required name='FromBranch' id='FromBranch'>
<input type='hidden' value='".$tansfer_items['TranferID']."' required name='TranferID' id='TranferID'>
<input type='hidden' value='".$tansfer_items['VarientCode']."' required name='VarientCode' id='VarientCode'>
<input type='hidden' value='".$tansfer_items['ProductCode']."' required name='ProductCode' id='ProductCode'>
<input type='hidden' value='".$tansfer_items['Quantity']."' required name='Quantity' id='Quantity'>
<input type='hidden' value='".$tansfer_items['Price']."' required name='Price' id='Price'>
<input type='hidden' value='".$tansfer_items['DiscountPrice']."' required name='DiscountPrice' id='DiscountPrice'>
<button type='submit' name='btn_approve' id='btn_approve' class='btn' style='color:white; background-color:green !important' ><i class='fa fa-check-square-o' aria-hidden='true'></i></button>
</form>";
}
elseif($transfer['ToBranch']===$_SESSION['BranchIDLog'] && !empty($tansfer_items['Verifieddatetime']) && $tansfer_items['Verifieddatetime']!=null){
$tansferdate=date_create($tansfer_items['Verifieddatetime']);
echo date_format($tansferdate,"d-m-Y H:i:s");

}
elseIF(!empty($tansfer_items['Verifieddatetime']) && $tansfer_items['Verifieddatetime']!=null){ $tansferdate=date_create($tansfer_items['Verifieddatetime']);
echo date_format($tansferdate,"d-m-Y H:i:s");}
				echo "</td>";				
				
				echo "</tr>";


			}
			
		}
	}
	}
}
?>
        </tbody>
        <tfoot>
            <tr>
                <th>Transfer ID</th>
                <th>From Branch</th>
                <th>To Branch</th>
                <th>Product Name</th>
                <th>Item Details</th>
                <th>Transfer Date</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </tfoot>
    </table>
                    </div>
                </div>
            </div>
            <div class="separator"> </div>
        </div>
    </section>
    <script>
$(document).ready(function() {
    $('#example').DataTable();
} );
    </script>
<script>
function submitForm() {
  document.getElementById("save_info").submit();
}
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
