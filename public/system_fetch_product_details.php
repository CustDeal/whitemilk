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
 $find=mysqli_query($connect_db,"SELECT * FROM product_variant where product_id='$txt_user'");
 echo '<option value="" style="display:none;" selected>--  Select Varient Name --</option>';
 while($row=mysqli_fetch_array($find))
 {
 $unit=mysqli_query($connect_db,"SELECT name FROM unit where id='".$row['measurement_unit_id']."'");
 $unit_name=mysqli_fetch_array($unit);

  echo '<option value="'.$row['id'].'">'.$row['measurement'].' '.$unit_name['name'].'</option>';
 }
 }
 exit;
}
?>

<?php unset($_SESSION['date_name']); ?>