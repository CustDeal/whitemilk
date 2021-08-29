<?php
include_once('includes/functions.php');

include_once('includes/crud.php');

$connect_db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($connect_db->connect_error) {
    die("Connection failed: ". $connect_db->connect_error);
    echo("DataBase Is Not Connected");
}

if(isset($_POST['btn_delete']))
{
	$id = mysqli_escape_string($connect_db, $_POST['id']); 
	
	$delete_batch = mysqli_query($connect_db, "DELETE FROM product_batches WHERE id='$id'");
	if($delete_batch===true)
	{
		$success ='Batch Deleted Successfully.';
	}
	else
	{
		$error = "'Batch Deleted Failed";
	}

}
?>
<link rel="staylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="staylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap.min.css">
<section class="content-header">
    <h1>Batch Report /<small><a href="home.php"><i class="fa fa-home"></i> Home</a></small></h1>
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
		echo '<span class="btn" style="background-color:green; color:white">'.$success.'</span>';
		$success="";
	}
}

if(isset($error))
{
	if(!empty($error) && $error!=null)
	{
		echo '<span class="btn" style="background-color:red; color:white">'.$error.'</span>';
		$error="";
	}
}
?>
			</div>

            <div class="col-xs-12">
                <div class="box">

                    <div class="box-body table-responsive">
<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Varient Name</th>
                <th>Batch No</th>
                <th>Expiery Date</th>
                <th>Notify Day</th>
                <th>IsExpired</th>
                <th>BranchID</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
<?php

$get_batch_items = mysqli_query($connect_db, "SELECT a.*,b.name,c.measurement, C.measurement_unit_id,d.name as unitname FROM product_batches as a INNER JOIN products as b ON a.product_code=b.id INNER JOIN product_variant as c ON a.varient_code=c.id INNER JOIN unit as d ON c.measurement_unit_id=d.id ");
if(mysqli_num_rows($get_batch_items)>0)
{
	while($batch = mysqli_fetch_array($get_batch_items))
	{
		
		echo "<tr>";
		
		echo "<td>";
		echo $batch['id'];
		echo "</td>";
		
		echo "<td>";
		echo $batch['name'];
		echo "</td>";
		
		echo "<td>";
		echo $batch['measurement']." ".$batch['unitname'];
		echo "</td>";
		
		echo "<td>";
		echo $batch['batch_no'];
		echo "</td>";
		
		echo "<td>";
		$date=date_create($batch['expiery_date']);
		echo date_format($date,"d-m-Y");
		echo "</td>";
		
		echo "<td>";
		echo $batch['notify_day'];
		echo "</td>";
		
		echo "<td>";
$expirey_date = $batch['expiery_date']; 
$notify_days = $batch['notify_day']; 
$addjust_day = $expirey_date." - ".$notify_days." days";
$current_date_ = date("d-m-Y");
  
// Add days to date and display it 
 $start_date =  date('Y-m-d', strtotime($addjust_day));

 $dateTimestamp1 = strtotime($expirey_date);
 $dateTimestamp2 = strtotime($current_date_);

// Compare the timestamp date 
if ($dateTimestamp1 <= $dateTimestamp2){
echo "Expired";}
elseif ($dateTimestamp1 > $dateTimestamp2){
echo "No"; }
		

		echo "</td>";
		
		echo "<td>";
		echo $batch['BranchID'];
		echo "</td>";
		
		echo "<td>";
		echo '<a href="batch-edit.php?id='.$batch['id'].'" class="btn" style="background-color:blue; color:white">Edit</a>';
		echo '<form method="post" action="">
		<input type="hidden" value="'.$batch['id'].'" name="id" id="id">
		<button type="submit" class="btn" style="background-color:red; color:white" name="btn_delete" > Delete </button>
		</form> ';
		echo "</td>";
		
		echo "</tr>";

		
	}
}
?>
        </tbody>
        <tfoot>
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Varient Name</th>
                <th>Batch No</th>
                <th>Expiery Date</th>
                <th>Notify Day</th>
                <th>IsExpired</th>
                <th>BranchID</th>
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

<?php unset($_SESSION['date_name']); ?>
