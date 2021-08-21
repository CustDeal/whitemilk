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

if(isset($_POST['btnAdd']))
{

    $txt_branch = mysqli_real_escape_string($connect_db,$_POST['txt_branch']);
    $txt_user = mysqli_real_escape_string($connect_db,$_POST['txt_user']);
    $txt_mobile = mysqli_real_escape_string($connect_db,$_POST['txt_mobile']);
    $txt_latitude = mysqli_real_escape_string($connect_db,$_POST['txt_latitude']);
    $txt_longitude = mysqli_real_escape_string($connect_db,$_POST['txt_longitude']);
    $txt_delivery = mysqli_real_escape_string($connect_db,$_POST['txt_delivery']);
    $txt_sub = mysqli_real_escape_string($connect_db,$_POST['txt_sub']);
	$txt_sub_id = 0;

	$total=0;
	$final_total=0;
	$payment_method = "cod";
	$tax_amount =0;
	$status = '[["received","'.date("d-m-Y H:i:s A").'"]]';
	
$get_product_user_group2 = mysqli_query($connect_db, "SELECT * FROM users WHERE status='1' and id='$txt_user'");
$product_user_group2 = mysqli_fetch_array($get_product_user_group2);

$get_product_user_group2 = mysqli_query($connect_db, "SELECT * FROM users WHERE status='1' and id='$txt_user'");
$product_user_group2 = mysqli_fetch_array($get_product_user_group2);

$get_product_user_city = mysqli_query($connect_db, "SELECT * FROM city WHERE id='".$product_user_group2['city']."'");
$product_user_city = mysqli_fetch_array($get_product_user_city);

$get_product_user_del = mysqli_query($connect_db, "SELECT * FROM area WHERE city_id='".$product_user_group2['city']."'");

if(mysqli_num_rows($get_product_user_del)>0)
{
	$product_user_del = mysqli_fetch_array($get_product_user_del);
	if(!empty($product_user_del['delivery_charges']) && $product_user_del['delivery_charges']!= null)
	{
		$delivery_charge = $product_user_del['delivery_charges'];
	}
	else
	{
		$delivery_charge=0;
	}
}
else
{
	$delivery_charge=0;
}

if(!empty($product_user_city['name']) && $product_user_city['name']!=null)
{
	$user_city = $product_user_city['name'];
}
else
{
	$user_city = "NA";
}

$get_product_user_area = mysqli_query($connect_db, "SELECT * FROM area WHERE id='".$product_user_group2['area']."'");
$product_user_area = mysqli_fetch_array($get_product_user_area);
if(!empty($product_user_area['name']) && $product_user_area['name']!=null)
{
	$user_area = $product_user_area['name'];
}
else
{
	$user_area = "NA";
}

	$address = $user_city." , ".$user_area.", ".$product_user_group2['street'].", ".$product_user_group2['pincode'];
	
	$order_inserted = mysqli_query($connect_db, "INSERT INTO orders (user_id, mobile, total, delivery_charge, tax_amount, final_total, payment_method, address, latitude, longitude, delivery_time, BranchID, ordered_by, active_status, status,type) VALUES('$txt_user','$txt_mobile','$total','$delivery_charge','$tax_amount','$final_total','$payment_method','$address','$txt_latitude','$txt_longitude','$txt_delivery','$txt_branch','0','received','$status','$txt_sub')");
	if($order_inserted===true)
	{
		$last_id = mysqli_insert_id($connect_db);
		
	$number = count($_POST["txt_product_name"]);


	if($number >= 1)
	{
		for($i=0; $i<$number; $i++)
		{
			if(trim($_POST["txt_product_name"][$i] != ''))
			{
				
				$get_product_id_tex = mysqli_query($connect_db, "SELECT * FROM products WHERE id='".$_POST['txt_product_name'][$i]."'");
				$product_id_tex = mysqli_fetch_array($get_product_id_tex);

				$get_product_vari_details = mysqli_query($connect_db, "SELECT * FROM product_variant WHERE id='".$_POST['txt_varient'][$i]."'");
				$product_vari_details = mysqli_fetch_array($get_product_vari_details);
				

				if(mysqli_num_rows($get_product_id_tex)>0)
				{
					
					$get_product_id_tex_details = mysqli_query($connect_db, "SELECT percentage FROM taxes WHERE id='".$product_id_tex['tax_id']."' and status='1'");
					
					if(mysqli_num_rows($get_product_id_tex)>0)
					{
						$product_id_tex_details = mysqli_fetch_array($get_product_id_tex_details);
						
						if(!empty($product_id_tex_details['percentage']) && $product_id_tex_details['percentage']!=null)
						{
							$tax_amount= (( $_POST['txt_discount'][$i] * $product_id_tex_details['percentage']) / 100 ) * $_POST['txt_qty'][$i];
							$tax_percentage = $product_id_tex_details['percentage'];
							$sub_total = $_POST['txt_discount'][$i] * $_POST['txt_qty'][$i];
							$price = $product_vari_details['price'];
						}
						else
						{
							$tax_amount= 0;
							$tax_percentage = 0;
							$sub_total = $_POST['txt_discount'][$i] * $_POST['txt_qty'][$i];
							$price = $product_vari_details['price'];
						}
					}
					else
					{
							$tax_amount= 0;
							$tax_percentage = 0;
							$sub_total = $_POST['txt_discount'][$i] * $_POST['txt_qty'][$i];
							$price = $product_vari_details['price'];
					}
				}
				else
				{
							$tax_amount= 0;
							$tax_percentage = 0;
							$sub_total = $_POST['txt_discount'][$i] * $_POST['txt_qty'][$i];
							$price = $product_vari_details['price'];

				}

		if(isset($_POST['txt_sub_id']))
		{
			$txt_sub_id = mysqli_real_escape_string($connect_db,$_POST['txt_sub_id']);
			$get_subcription_details = mysqli_query($connect_db, "SELECT * FROM subcription_plan WHERE id='$txt_sub_id'");
			$subcription = mysqli_fetch_array($get_subcription_details);
			$isSubscriptionDelivered = 1;
			$SubscripPlanID = $subcription['id'];
			$DayCount = $subcription['days'];
			$isDelivered = 0;
			$isHoliday = 0;
			$status = 2;
			
$today = date("Y-m-d");
$date=date_create($today);

			
			for ($x = 1; $x <= $DayCount; $x++)
			{
 				$increase = "1 days";
				date_add($date,date_interval_create_from_date_string($increase));
				$deliverdate = date_format($date,"Y-m-d");
				$product_subscription_info = mysqli_query($connect_db, "INSERT INTO subscription_history (BranchCode , UserID, OrderNo, ProductCode, product_variant_id, Price, SubscripPlanID, DayCount, isDelivered, isHoliday, status,deliverdate) VALUES('$txt_branch','$txt_user','$last_id','".$_POST["txt_product_name"][$i]."','".$_POST['txt_varient'][$i]."','".$_POST['txt_discount'][$i]."','$SubscripPlanID','$x','$isDelivered','$isHoliday','$status','$deliverdate')");
			}
			
		}


				$product_item_inserted = mysqli_query($connect_db, "INSERT INTO order_items (user_id , order_id, product_variant_id, quantity, price, discounted_price, tax_amount, tax_percentage, discount, sub_total, status, active_status) VALUES('$txt_user','$last_id','".$_POST['txt_varient'][$i]."','".$_POST['txt_qty'][$i]."','$price','".$_POST['txt_discount'][$i]."','$tax_amount','$tax_percentage','0','$sub_total','$status','received')");
				if($product_item_inserted===true)
				{
					$error['add_menu'] = " <section class='content-header'><span class='label label-success'>Order Added for Varient ".$product_id_tex['name']."  Successfully</span></section>";
				}
				else
				{
					$error['add_menu'] = " <span class='label label-danger'>Failed for Varient ".$product_id_tex['name']." due to ". mysqli_error($connect_db)."</span>";
				}

			}
		}
	}
	
$get_product_cal = mysqli_query($connect_db, "SELECT sum(discounted_price) as price, sum(tax_amount) as tax, sum(sub_total) as subamount FROM order_items WHERE order_id='$last_id'");
$product_cal = mysqli_fetch_array($get_product_cal);

if(!empty($product_cal['subamount']) && $product_cal['subamount']!=null)
{
	$sub = $product_cal['subamount'];
}
else
{
	$sub = 0;
}

if(!empty($product_cal['tax']) && $product_cal['tax']!=null)
{
	$tax = $product_cal['tax'];
}
else
{
	$tax = 0;
}
$total = $sub - $tax ;
$tax_amount = $tax;
$final_total = $sub + $delivery_charge;
		
	$update_order = mysqli_query($connect_db, "UPDATE orders SET total='$total', tax_amount='$tax_amount', final_total='$final_total', SubscripPlanID='$txt_sub_id' WHERE id='$last_id'");
	if($update_order===true)
	{
		
		$error['add_menu'] = " <section class='content-header'><span class='label label-success'>Order Added Successfully</span></section>";
	}
	else
	{
		$error['add_menu'] = " <span class='label label-danger'>Failed add Order". mysqli_error($connect_db)."</span>";
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
                    
                    <div class="box-body row">
					
						<div class="col-md-4">
							<label class="control-label" for="txt_branch">Branch Name</label><i class="text-danger asterik">*</i>
							<select id='txt_branch' name="txt_branch" class="form-control select" required data-placeholder="Select Branch Name">
								<option value="" style="display:none;"  selected>--  Select Branch Name --</option>
<?php
$get_product_branch_group = mysqli_query($connect_db, "SELECT * FROM branch_register");
while($product_branch_group = mysqli_fetch_array($get_product_branch_group))
{
	echo '<option value="'.$product_branch_group['BranchID'].'">'.$product_branch_group['BranchName'].'</option>';
}
?>

							</select><br/><br/>
						</div>
						
				
						<div class="col-md-4">
							<label class="control-label" for="txt_user">User Name</label><i class="text-danger asterik">*</i>
							<select id='txt_user' name="txt_user" class="form-control select" required data-placeholder="Select Product Name" onchange="addMobile()" >
								<option value="" style="display:none;" selected>--  Select User Name --</option>
<?php
$get_product_user_group = mysqli_query($connect_db, "SELECT * FROM users WHERE status='1'");
while($product_user_group = mysqli_fetch_array($get_product_user_group))
{
	echo '<option value="'.$product_user_group['id'].'" >'.$product_user_group['name'].'</option>';
}
?>
							</select><br/><br/>
						</div>
						<div id="userresult">
						<div class="col-md-4">
							<label class="control-label" for="txt_mobile">Mobile No.</label><i class="text-danger asterik">*</i>
							<input type="text" name="txt_mobile" id="txt_mobile" required class="form-control " />
							<br/>
						</div>
						
						<div class="col-md-4">
							<label class="control-label" for="txt_latitude">Latitude</label><i class="text-danger asterik">*</i>
							<input type="text" name="txt_latitude" id="txt_latitude" value="" required class="form-control " />
							<br/>
						</div>
						
						<div class="col-md-4">
							<label class="control-label" for="txt_longitude">Longitude</label><i class="text-danger asterik">*</i>
							<input type="text" name="txt_longitude" id="txt_longitude" value="" required class="form-control " />
							<br/>
						</div>
						
						</div>
						
						<div class="col-md-4">
							<label class="control-label" for="txt_delivery">Delivery Time</label><i class="text-danger asterik">*</i>
							<select id='txt_delivery' name="txt_delivery" class="form-control select" required data-placeholder="Select Product Name" >
<?php
$get_product_user_time = mysqli_query($connect_db, "SELECT * FROM time_slots WHERE status='1'");
while($product_user_time = mysqli_fetch_array($get_product_user_time))
{
	echo '<option value="'.$product_user_time['title'].'" >'.$product_user_time['title'].'</option>';
}
?>
							</select><br/><br/><br/>
						</div>
						
						<div class="col-md-4">
							<label class="control-label" for="txt_sub">Order Type</label><i class="text-danger asterik">*</i>
							<select id='txt_sub' name="txt_sub" class="form-control select" required data-placeholder="Select Product Name" onchange="getSub()" >
								<option value="normal" selected>Normal Order</option>
								<option value="subscription" >Subscription Order</option>
							</select><br/><br/>
						</div>
						
						<div class="col-md-4" id="subdetails">
						</div>
						
						
		
						</div>
						
<div class="row">
<div class="col-md-12">
<table  class="table table-striped" id="dynamic_field">
<tr class="row">
<td class="col-md-3 "><strong>Product Name</strong></td>
<td class="col-md-3 "><strong>Product Variant Name</strong></td>
<td class="col-md-1 "><strong>Quantity</strong></td>
<td class="col-md-1 "><strong>Discounted Prise</strong></td>
<td class="col-md-2 "><strong>Tax</strong></td>
<td class="col-md-1"></td>
</tr>
<tr class="row">
<td class="col-md-3">
<select id='txt_product_name' name="txt_product_name[]" class="form-control " required data-placeholder="Select Product Name" onchange="addVarient()"> 
<option value="" style="display:none;" selected>--  Select Product Name --</option>
<?php
$get_product_products_group = mysqli_query($connect_db, "SELECT * FROM products where status='1'");
while($product_products_group = mysqli_fetch_array($get_product_products_group))
{
	echo '<option value="'.$product_products_group['id'].'">'.$product_products_group['name'].'</option>';
}
?>
</select>
</td>
<td class="col-md-3">
<select id='txt_varient' name="txt_varient[]" class="form-control " required data-placeholder="Select Varient Name" onchange="getCost()" >
<option value="" style="display:none;" selected>--  Select Varient Name --</option>

</select>
</td>
<td class="col-md-1">
<input type="number" name="txt_qty[]" id="txt_qty" placeholder="Quantity" value="1" min="1" required class="form-control "  />
</td>
<td class="col-md-1">
<input type="text" name="txt_discount[]" id="txt_discount" placeholder="Discounted Prise" value="0" min="0" required class="form-control " readonly />
</td>
<td class="col-md-2">
<input type="number" name="txt_tex[]" id="txt_tex" placeholder="Tax" value="0" min="0" required class="form-control " readonly />
</td>
<td class="col-md-1">
<button type="button" name="add" id="add" class="btn btn-success">+</button>
</td>
</tr>
</table>

</div>
</div>
							
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <input type="submit" class="btn-primary btn" value="Add" name="btnAdd" />&nbsp;
                        <input type="reset" class="btn-danger btn" value="Clear" id="btnClear" />
                        <!--<div  id="res"></div>-->
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
$(document).ready(function(){
	var i=1;
	$('#add').click(function(){
		i++;
		$('#dynamic_field').append("<tr id='row"+i+"' class='row' ><td class='col-md-3'><select id='txt_product_name"+i+"' name='txt_product_name[]' class='form-control select' required data-placeholder='Select Product Name' onchange='addVarient2("+i+")'><option value='' style='display:none;' selected>--  Select Product Name --</option><?php $get_product_products_group = mysqli_query($connect_db, 'SELECT * FROM products'); while($product_products_group = mysqli_fetch_array($get_product_products_group)){?><option value='<?php echo $product_products_group['id'];?>'><?php echo $product_products_group['name']; ?></option><?php } ?></select></td><td class='col-md-3'><select id='txt_varient"+i+"' name='txt_varient[]' class='form-control select' required data-placeholder='Select Varient Name' onchange='getCost2("+i+")'><option value='' style='display:none;' selected>--  Select Varient Name --</option></select></td><td class='col-md-1'><input type='number' name='txt_qty[]' id='txt_qty' placeholder='Quantity' value='1' min='1' required class='form-control ' /></td><td class='col-md-1'><input type='number' name='txt_discount[]' id='txt_discount"+i+"' placeholder='Discounted Prise' value='0' min='0' required class='form-control ' readonly /></td><td class='col-md-2'><input type='number' name='txt_tex[]' id='txt_tex"+i+"' placeholder='Tex' value='0' min='0' required class='form-control ' readonly /></td><td class='col-xs-1 col-sm-1 col-md-1 col-lg-1'><button type='button' name='remove' id='"+i+"' class='btn btn-danger btn_remove'>X</button></td></tr>");
	});
	
	$(document).on('click', '.btn_remove', function(){
		var button_id = $(this).attr("id"); 
		$('#row'+button_id+'').remove();
	});
});
</script>
<script>
function addMobile() {
  var auser = document.getElementById("txt_user").value;
  fetch_select(auser);
}

function fetch_select(val)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_user_details.php',
 data: {
  get_option:val
 },
 success: function (response) {
  document.getElementById("userresult").innerHTML=response; 
 }
 });
}
</script>

<script>
function addVarient() {
  var aproduct = document.getElementById("txt_product_name").value;
  fetch_select2(aproduct);
}

function fetch_select2(val)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_product_details.php',
 data: {
  get_option:val
 },
 success: function (response) {
  document.getElementById("txt_varient").innerHTML=response; 
  
 }
 });
}
</script>

<script>
function addVarient2(val) {
  var id = val;
  console.log(id);
  var aproduct2 = document.getElementById("txt_product_name"+id+"").value;
  fetch_select3(aproduct2,id);
}

function fetch_select3(aproduct2,id)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_product_details.php',
 data: {
  get_option:aproduct2
 },
 success: function (response) {
  document.getElementById("txt_varient"+id+"").innerHTML=response; 
 }
 });
}
</script>

<script>
function getCost() {
  var avarient = document.getElementById("txt_varient").value;
  console.log(avarient);
  fetch_select4(avarient);
}

function fetch_select4(avarient)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_varient_details.php',
 data: {
  get_option:avarient
 },
 success: function (response) {
  
     document.getElementById("txt_discount").value=response; 

   
 }
 });
}
</script>
<script>
function getCost2(val) {
  var id = val;
  var avarient2 = document.getElementById("txt_varient"+id+"").value;
  fetch_select5(avarient2,id);
}

function fetch_select5(avarient2,id)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_varient_details.php',
 data: {
  get_option:avarient2
 },
 success: function (response) {
  
     document.getElementById("txt_discount"+id+"").value=response; 

   
 }
 });
}
</script>

<script>
function getSub() {
  var suba = document.getElementById("txt_sub").value;
  if(suba == "subscription")
  {
	fetch_select6(suba);
  }
  else
  {
	  document.getElementById("subdetails").innerHTML="";
  }
}

function fetch_select6(suba)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_subscription_details.php',
 data: {
  get_option:suba
 },
 success: function (response) {
  
     document.getElementById("subdetails").innerHTML=response; 

   
 }
 });
}
</script>



