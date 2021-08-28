<?php
include_once('includes/functions.php');
date_default_timezone_set('Asia/Kolkata');
$function = new functions;
include_once('includes/custom-functions.php');
$fn = new custom_functions;



$connect_db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($connect_db->connect_error) {
    die("Connection failed: ". $connect_db->connect_error);
    echo("DataBase Is Not Connected");
}

if(isset($_SESSION['date_name']))
{
	if(!empty($_SESSION['date_name']) && $_SESSION['date_name']!=null)
	{
		$date_name = $_SESSION['date_name'];
	}
}
else
{
	date_default_timezone_set('Asia/Kolkata');
	$_SESSION['date_name'] = date('d-m-Y-H-i-s');
}

if(isset($_POST['btnAdd']))
{
    $txt_branch = mysqli_real_escape_string($connect_db,$_SESSION['BranchIDLog']);
    $txt_user = "0";
    $txt_mobile = "000000000";
    $txt_latitude = "00.00000";
    $txt_longitude = "00.00000";
    $txt_delivery = "NA";
    $txt_sub = "normal";
	$ordered_by = "2";
	$delivery_charge=0;
	$address = "NA";
	
 $find_already = mysqli_query($connect_db,"SELECT *, sum(price) as sum_mrp, sum(tax) as taxamount, sum(sub_total) as subamount  FROM posoders where SlNo='$date_name' and draft='1'");
 if(mysqli_num_rows($find_already)>0)
 {
	$posoders = mysqli_fetch_array($find_already);
	$total = $posoders['sum_mrp'];
	$final_total = $posoders['subamount'];
	$payment_method = "cod";
	$tax_amount =$posoders['tax'];
	$status = '[["received","'.date("d-m-Y H:i:s A").'"]]';
 }
 else
 {
	$total = 0;
	$final_total = 0;
	$payment_method = "cod";
	$tax_amount =0;
	$status = '[["received","'.date("d-m-Y H:i:s A").'"]]';
 }

	$order_inserted = mysqli_query($connect_db, "INSERT INTO orders (user_id, mobile, total, delivery_charge, tax_amount, final_total, payment_method, address, latitude, longitude, delivery_time, BranchID, ordered_by, active_status, status,type) VALUES('$txt_user','$txt_mobile','$total','$delivery_charge','$tax_amount','$final_total','$payment_method','$address','$txt_latitude','$txt_longitude','$txt_delivery','$txt_branch','$ordered_by','received','$status','$txt_sub')");
	if($order_inserted===true)
	{
		$last_id = mysqli_insert_id($connect_db);
		$find_products = mysqli_query($connect_db,"SELECT a.*, a.id as mainid, a.price as cost, a.quantity as qty, a.tax as txa, a.sub_total as sub, b.*, c.*, d.title,d.percentage,e.name as unitname from posoders as a INNER JOIN product_variant AS b ON a.varient_id=b.id INNER JOIN products as c ON a.product_id=c.id INNER JOIN taxes as d ON c.tax_id = d.id INNER JOIN unit as e ON b.measurement_unit_id = e.id where a.SlNo='$date_name' and a.draft='1'");
		if(mysqli_num_rows($find_products)>0)
		{
			while($products = mysqli_fetch_array($find_products))
			{
				$order_item_inserted = mysqli_query($connect_db, "INSERT INTO order_items (user_id, order_id, product_variant_id, quantity, price, discounted_price, tax_amount, tax_percentage, discount, sub_total, status, active_status) VALUES('$txt_user','$last_id','".$products['varient_id']."','".$products['qty']."','".$products['price']."','".$products['cost']."','".$products['txa']."','".$products['percentage']."','0','".$products['sub']."','$status','received')");
			}
			
			$error['add_menu'] = " <section class='content-header'><span class='label label-success'>Order Added Successfully</span></section>";
			echo'<script>location.replace("invoice.php?id='.$last_id.'")</script>';
					
		}
		
	}
	else
	{
		$error['add_menu'] = " <span class='label label-danger'>Failed add Order". mysqli_error($connect_db)."</span>";
	}
	
}



?>
<section class="content-header">
    <h1>Add Order</h1>
    <?php echo isset($error['add_menu']) ? $error['add_menu'] : ''; ?>
    <ol class="breadcrumb">
        <li><a href="home.php"><i class="fa fa-home"></i> Home</a></li>
    </ol>

</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php if ($permissions['products']['create'] == 0) { ?>
                <div class="alert alert-danger">You have no permission to create order.</div>
            <?php } ?>
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Add Order</h3>
                </div>
                <div class="box-header">
                    <?php echo isset($error['cancelable']) ? '<span class="label label-danger">Till status is required.</span>' : ''; ?>
                </div>

                <!-- /.box-header -->
                <!-- form start -->
                <form id='orders-add' method="post" enctype="multipart/form-data" action="">
                    <!-- /.box-body -->
                    <div class="box-footer text-right">
                        <input type="submit" class="btn-primary btn" value="Submit" name="btnAdd" />&nbsp;
                        <input type="reset" class="btn-danger btn" value="Clear" id="btnClear" />
                        <!--<div  id="res"></div>-->
                    </div>
					<hr>
						
<div class="row">
<div class="col-md-12">
<table  class="table table-striped" id="dynamic_field">
<tr class="row">
<td class="col-md-1 "><strong>Sr. No.</strong></td>
<td class="col-md-3 "><strong>Product Name</strong></td>
<td class="col-md-2 "><strong>Variant Name</strong></td>
<td class="col-md-2 "><strong>Price</strong></td>
<td class="col-md-1 "><strong>Quantity</strong></td>
<td class="col-md-1 "><strong>Tax</strong></td>
<td class="col-md-2 "><strong>Total</strong></td>
</tr>

</table>

</div>
</div>
							

<div class="row">
<div class="col-md-12">

<div class="col-md-12">
<label class="control-label" for="txt_barcode">Barcode</label><i class="text-danger asterik">*</i>
<input type="text" name="txt_barcode" id="txt_barcode" value="" class="form-control "  autofocus onchange="getBarcodeDetails()" style="height: 100px !important;" />
<br/>
</div>

</div>
</div>
                </form>
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>
<div class="separator"> </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>

	<script>
function SetFocus () {
var input = document.getElementById("txt_barcode");
input.focus ();
}
	</script>
<script>
function getBarcodeDetails() {
  var auser = document.getElementById("txt_barcode").value;
  fetch_select(auser);
}

function fetch_select(val)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_barcode_details.php',
 data: {
  get_option:val
 },
 success: function (response) {
  document.getElementById("dynamic_field").innerHTML=response; 
  var input = document.getElementById("txt_barcode");
input.focus ();
document.getElementById("txt_barcode").value="";
 }
 });
}
</script>

<script>
function getBarcodeDetailsUpdate(sr,mainid) {
	var sr = sr;
	var mainid = mainid;
  var quser = document.getElementById("txt_quantity"+sr+"").value;
  console.log(sr);
  fetch_select2(sr,mainid,quser);
}

function fetch_select2(sr,mainid,quser)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_barcode_details_update.php',
 data: {
  get_sr:sr,
  get_mainid:mainid,
  get_option:quser
 },
 success: function (response) {
  document.getElementById("dynamic_field").innerHTML=response; 
 }
 });
}
</script>


