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

    $FromBranch = mysqli_real_escape_string($connect_db,$_POST['txt_branch']);
    $ToBranch = mysqli_real_escape_string($connect_db,$_POST['txt_to']);
	$TotalAmount =0;
	
	$transfer_inserted = mysqli_query($connect_db, "INSERT INTO branchstockverify (FromBranch, ToBranch, TotalAmount) VALUES('$FromBranch','$ToBranch','$TotalAmount')");
	
	if($transfer_inserted===true)
	{
		$TranferID = mysqli_insert_id($connect_db);
		
	$number = count($_POST["txt_product_name"]);
	if($number >= 1)
	{
		for($i=0; $i<$number; $i++)
		{
			if(trim($_POST["txt_product_name"][$i] != ''))
			{
				$get_product_vari_details = mysqli_query($connect_db, "SELECT * FROM product_variant WHERE id='".$_POST['txt_varient'][$i]."'");
				$product_vari_details = mysqli_fetch_array($get_product_vari_details);
				
				$stock = $product_vari_details['stock'];
				$trastock = $_POST["txt_qty"][$i];
				

				if($stock >= $trastock && $stock!=0)
				{
				$balance = $stock - $trastock;

				
				$update_product_vari_details = mysqli_query($connect_db, "UPDATE product_variant SET stock='$balance' WHERE id='".$_POST['txt_varient'][$i]."'");
				
				if($update_product_vari_details===true)
				{
					$transfer_item_inserted = mysqli_query($connect_db, "INSERT INTO branchstockverifyitems (TranferID, ProductCode, VarientCode, Quantity, Price, DiscountPrice) VALUES('$TranferID','".$_POST["txt_product_name"][$i]."','".$_POST["txt_varient"][$i]."','".$_POST["txt_qty"][$i]."','".$product_vari_details["price"]."','".$_POST["txt_discount"][$i]."')");
					if($transfer_item_inserted===true)
					{
						$error['add_menu'] = " <section class='content-header'><span class='label label-success'>Transfer Added Successfully</span></section>";
					}
					else
					{
						$error['add_menu'] = " <span class='label label-danger'>Failed to Add Item". mysqli_error($connect_db)."</span>";
					}
				}
				else
				{
					$error['add_menu'] = " <span class='label label-danger'>Failed to Update Stock". mysqli_error($connect_db)."</span>";
				}
				
				}
				
				else
				{
					$error['add_menu'] = " <span class='label label-danger'>Failed to Update Stock". mysqli_error($connect_db)."</span>";
				}
				
				
			}
		}
	}
	
	$get_total_amount_details = mysqli_query($connect_db, "SELECT sum(DiscountPrice) as total FROM branchstockverifyitems WHERE TranferID='$TranferID'");
	$total_amount_details = mysqli_fetch_array($get_total_amount_details);
	$TotalAmount = $total_amount_details['total'];
	
	$update_amount_trans_details = mysqli_query($connect_db, "UPDATE branchstockverify SET TotalAmount='$TotalAmount' WHERE TranferID='$TranferID'");
	
	$auto_detete_check =  mysqli_query($connect_db, "SELECT * FROM branchstockverifyitems WHERE TranferID='$TranferID'");
	if(mysqli_num_rows($auto_detete_check)<= 0)
	{
		$auto_detete =  mysqli_query($connect_db, "DELETE FROM branchstockverify WHERE TranferID='$TranferID'");
	}
	
	
	
		
	}
	else
	{
		$error['add_menu'] = " <span class='label label-danger'>Failed add Transfer". mysqli_error($connect_db)."</span>";
	}

}


?>
<section class="content-header">
    <h1>Stock Transfer </h1>
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
                    <h3 class="box-title">Add Stock Transfer</h3>
                </div>
                <div class="box-header">
                    <?php echo isset($error['cancelable']) ? '<span class="label label-danger">Till status is required.</span>' : ''; ?>
                </div>

                <!-- /.box-header -->
                <!-- form start -->
                <form id='orders-add' method="post" enctype="multipart/form-data" action="">
                    
                    <div class="box-body row">
					
						<div class="col-md-4">
							<label class="control-label" for="txt_branch">Stock From</label><i class="text-danger asterik">*</i>
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
							<label class="control-label" for="txt_to">To Destination</label><i class="text-danger asterik">*</i>
							<select id='txt_to' name="txt_to" class="form-control select" required data-placeholder="Select Branch Name">
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
<input type="text" name="txt_qty[]" id="txt_qty" placeholder="Quantity" value="1" min="1" required class="form-control "  />
</td>
<td class="col-md-1">
<input type="text" name="txt_discount[]" id="txt_discount" placeholder="Discounted Prise" value="0" min="0" required class="form-control " readonly />
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
		$('#dynamic_field').append("<tr id='row"+i+"' class='row' ><td class='col-md-3'><select id='txt_product_name"+i+"' name='txt_product_name[]' class='form-control select' required data-placeholder='Select Product Name' onchange='addVarient2("+i+")'><option value='' style='display:none;' selected>--  Select Product Name --</option><?php $get_product_products_group = mysqli_query($connect_db, 'SELECT * FROM products'); while($product_products_group = mysqli_fetch_array($get_product_products_group)){?><option value='<?php echo $product_products_group['id'];?>'><?php echo $product_products_group['name']; ?></option><?php } ?></select></td><td class='col-md-3'><select id='txt_varient"+i+"' name='txt_varient[]' class='form-control select' required data-placeholder='Select Varient Name' onchange='getCost2("+i+")'><option value='' style='display:none;' selected>--  Select Varient Name --</option></select></td><td class='col-md-1'><input type='text' name='txt_qty[]' id='txt_qty"+i+"' placeholder='Quantity' value='1' min='1' required class='form-control ' /></td><td class='col-md-1'><input type='text' name='txt_discount[]' id='txt_discount"+i+"' placeholder='Discounted Prise' value='0' min='0' required class='form-control ' readonly /></td><td class='col-xs-1 col-sm-1 col-md-1 col-lg-1'><button type='button' name='remove' id='"+i+"' class='btn btn-danger btn_remove'>X</button></td></tr>");
	});
	
	$(document).on('click', '.btn_remove', function(){
		var button_id = $(this).attr("id"); 
		$('#row'+button_id+'').remove();
	});
});
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
	 
const obj = JSON.parse(response);
document.getElementById("txt_qty").value=obj.stock; 
     document.getElementById("txt_discount").value=obj.discounted_price; 



   
 }
 });
}
</script>
<script>
function getCost2(val) {
  var id = val;
  var avarient2 = document.getElementById("txt_varient"+id+"").value;
  console.log("hello");
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
  
const obj2 = JSON.parse(response);
document.getElementById("txt_qty"+id+"").value=obj2.stock; 
     document.getElementById("txt_discount"+id+"").value=obj2.discounted_price; 
   
 }
 });
}
</script>



