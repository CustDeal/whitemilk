<?php
include_once('../includes/crud.php');

$connect_db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($connect_db->connect_error) {
    die("Connection failed: ". $connect_db->connect_error);
    echo("DataBase Is Not Connected");
}

 $find=mysqli_query($connect_db,"SELECT * FROM subcription_plan");

if(mysqli_num_rows($find)>0)
{
	echo '<label class="control-label" for="txt_sub_id">Subcription Type</label><i class="text-danger asterik">*</i>';
	echo '<select id="txt_sub_id" name="txt_sub_id" class="form-control select" required data-placeholder="Select Product Name">';
		echo '<option value="" style="display:none;" selected>--  Select Subcription Plan --</option>';

	while($row=mysqli_fetch_array($find))
	{
		echo "<option value='".$row['id']."'>".$row['name']."</option>";
	}
	echo '</select>';
}

 exit;


?>