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

if(isset($_GET['id']))
{
	if(!empty($_GET['id']) && $_GET['id']!=null && $_GET['id']!="")
	{
		$batch_id = mysqli_real_escape_string($connect_db,$_GET['id']);

		$get_batch_items = mysqli_query($connect_db, "SELECT * FROM product_batches WHERE id='$batch_id'");
		
		if(mysqli_num_rows($get_batch_items)>0)
		{
			$batch = mysqli_fetch_array($get_batch_items);
		}
		else
		{
			echo'<script>location.replace("batch.php")</script>';
		}
	}
	else
	{
		echo'<script>location.replace("batch.php")</script>';
	}
}
else
{
	echo'<script>location.replace("batch.php")</script>';

}


if(isset($_POST['btnAdd']))
{
	$id = mysqli_real_escape_string($connect_db,$_POST['id']);

	$BranchID = mysqli_real_escape_string($connect_db,$_POST['BranchID']);
	$product_code = mysqli_real_escape_string($connect_db,$_POST['txt_product']);	
	$varient_code = mysqli_real_escape_string($connect_db,$_POST['varient_code']);
	$batch_no = mysqli_real_escape_string($connect_db,$_POST['batch_no']);
	$expiery_date = mysqli_real_escape_string($connect_db,$_POST['expiery_date']);
	$notify_day = mysqli_real_escape_string($connect_db,$_POST['notify_day']);

	

	$batch_update = mysqli_query($connect_db, "UPDATE product_batches SET product_code='$product_code', varient_code='$varient_code', batch_no='$batch_no', expiery_date='$expiery_date', notify_day='$notify_day', BranchID='$BranchID' WHERE id='$id'");
	if($batch_update===true)
	{
		
			
			$error['add_menu'] = " <section class='content-header'><span class='label label-success'>Batch Updated Successfully</span></section>";
			
		$get_batch_items = mysqli_query($connect_db, "SELECT * FROM product_batches WHERE id='$id'");
		
		if(mysqli_num_rows($get_batch_items)>0)
		{
			$batch = mysqli_fetch_array($get_batch_items);
		}
					
		
	}
	else
	{
		$error['add_menu'] = " <span class='label label-danger'>Failed Batch Update ". mysqli_error($connect_db)."</span>";
	}
	
}



?>
<section class="content-header">
    <h1>Batch Group</h1>
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
                    <h3 class="box-title">Add Batch Group</h3>
                </div>
                <div class="box-header">
                    <?php echo isset($error['cancelable']) ? '<span class="label label-danger">Till status is required.</span>' : ''; ?>
                </div>

                <!-- /.box-header -->
                <!-- form start -->
                <form id='orders-add' method="post" enctype="multipart/form-data" action="">
				
                    <div class="box-body row">
					
						<div class="col-md-4">
							<label class="control-label" for="BranchID">Branch ID</label><i class="text-danger asterik">*</i>
							<select id='BranchID' name="BranchID" class="form-control select" required data-placeholder="Select Branch Name">
								<option value="" style="display:none;"  selected>--  Select Branch Name --</option>
<?php
$get_product_branch_group = mysqli_query($connect_db, "SELECT * FROM branch_register");
while($product_branch_group = mysqli_fetch_array($get_product_branch_group))
{
	echo '<option value="'.$product_branch_group['BranchID'].'"';
	if($product_branch_group['BranchID']===$batch['BranchID'])
	{
		echo " selected ";
	}
	echo '>'.$product_branch_group['BranchName'].'</option>';
}
?>

							</select><br/><br/>
						</div>
						
						<div class="col-md-4">
							<label class="control-label" for="txt_product">Product Name</label><i class="text-danger asterik">*</i>
							<select id='txt_product' name="txt_product" class="form-control select" required data-placeholder="Select Product Name" onchange="addVarient()" >
								<option value="" style="display:none;"  selected>--  Select Product Name --</option>
<?php
$get_product_group = mysqli_query($connect_db, "SELECT * FROM products");
while($product_group = mysqli_fetch_array($get_product_group))
{
	echo '<option value="'.$product_group['id'].'"';
	if($product_group['id']===$batch['product_code'])
	{
		echo " selected ";
	}
	echo '>'.$product_group['name'].'</option>';
}
?>

							</select><br/><br/>
						</div>
						
						<div class="col-md-4">
							<label class="control-label" for="varient_code">Select Varient</label><i class="text-danger asterik">*</i>
							<select id='varient_code' name="varient_code" class="form-control select" required data-placeholder="Select Varient Name">
								<option value="" style="display:none;"  selected>--  Select Varient Name --</option>
<?php 
$get_varient_group = mysqli_query($connect_db, "SELECT a.id as vid, a.measurement, a.measurement_unit_id, b.name as unitname FROM product_variant as a INNER JOIN unit as b ON a.measurement_unit_id=b.id WHERE a.id='".$batch['varient_code']."'");
while($varient_group = mysqli_fetch_array($get_varient_group))
{
	echo '<option value="'.$varient_group['vid'].'"';
	if($varient_group['vid']===$batch['varient_code'])
	{
		echo " selected ";
	}
	echo '>'.$varient_group['measurement'].' '.$varient_group['unitname'].'</option>';
}
?>
							</select><br/><br/><br/>
						</div>
<input type="hidden" name="id" id="id" value="<?php echo $batch['id']; ?>" required >

<div class="col-md-4">
<label class="control-label" for="batch_no">Batch No</label><i class="text-danger asterik">*</i>
<input type="text" name="batch_no" id="batch_no" value="<?php echo $batch['batch_no']; ?>" class="form-control " required >
<br/>
</div>

<div class="col-md-4">
<label class="control-label" for="expiery_date">Expiery Date</label><i class="text-danger asterik">*</i>
<input type="date" name="expiery_date" id="expiery_date" value="<?php echo date('Y-m-d',strtotime($batch["expiery_date"])) ?>" class="form-control " required >
<br/>
</div>

<div class="col-md-4">
<label class="control-label" for="notify_day">Notify Day</label><i class="text-danger asterik">*</i>
<input type="number" name="notify_day" id="notify_day" value="<?php echo $batch['notify_day']; ?>" class="form-control " required >
<br/>
</div>

						
				

						
						
		
						</div>
                    <!-- /.box-body -->
                    <div class="box-footer text-right">
                        <input type="submit" class="btn-primary btn" value="Submit" name="btnAdd" />&nbsp;
                        <input type="reset" class="btn-danger btn" value="Clear" id="btnClear" />
                        <!--<div  id="res"></div>-->
                    </div>
					<hr>
						

							


                </form>
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>
<div class="separator"> </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>

<script>
function addVarient() {
  var auser = document.getElementById("txt_product").value;
  fetch_select(auser);
}

function fetch_select(val)
{
 $.ajax({
 type: 'post',
 url: 'public/system_fetch_product_details.php',
 data: {
  get_option:val
 },
 success: function (response) {
  document.getElementById("varient_code").innerHTML=response; 
 }
 });
}
</script>

