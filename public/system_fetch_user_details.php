<?php
include_once('../includes/crud.php');

$connect_db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($connect_db->connect_error) {
    die("Connection failed: ". $connect_db->connect_error);
    echo("DataBase Is Not Connected");
}

if(isset($_POST['get_option']))
{
 $txt_user = $_POST['get_option'];
 if($txt_user!="0")
 {
 $find=mysqli_query($connect_db,"SELECT * FROM users where id='$txt_user'");
 while($row=mysqli_fetch_array($find))
 {
  echo '<div class="col-md-4">
		<label class="control-label" for="txt_mobile">Mobile No.</label><i class="text-danger asterik">*</i>
		<input type="text" name="txt_mobile" id="txt_mobile" value="'.$row['mobile'].'" required class="form-control " />
		<br/>
		</div>';
  echo '<div class="col-md-4">
		<label class="control-label" for="txt_latitude">Latitude</label><i class="text-danger asterik">*</i>
		<input type="text" name="txt_latitude" id="txt_latitude" value="'.$row['latitude'].'" required class="form-control " />
		<br/>
		</div>';
  echo '<div class="col-md-4">
		<label class="control-label" for="txt_longitude">Longitude</label><i class="text-danger asterik">*</i>
		<input type="text" name="txt_longitude" id="txt_longitude" value="'.$row['longitude'].'" required class="form-control " />
		<br/>
		</div>';
 }
 }
 exit;
}
?>