<?php
include_once('../includes/crud.php');
include('../includes/variables.php');
include_once('../includes/custom-functions.php');
$fn = new custom_functions;
$connect_db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($connect_db->connect_error) {
    die("Connection failed: ". $connect_db->connect_error);
    echo("DataBase Is Not Connected");
}
session_start();

$date_name = $_SESSION['date_name'];

if(isset($_POST['get_option']))
{
 $txt_user = $_POST['get_option'];
 if($txt_user!="0" && !empty($txt_user) && $txt_user!=null)
 {
	 
 $find_already = mysqli_query($connect_db,"SELECT * FROM posoders where barcode='$txt_user' AND SlNo='$date_name'");
 if(mysqli_num_rows($find_already) <= 0 )
 {
 $find=mysqli_query($connect_db,"SELECT a.*, a.id as variant_id, b.*,c.title,c.percentage,d.name as unitname FROM product_variant as a INNER JOIN products as b ON a.product_id=b.id INNER JOIN taxes as c ON b.tax_id = c.id INNER JOIN unit as d ON a.measurement_unit_id = d.id where a.barcode='$txt_user'");
echo '<tr class="row">
<td class="col-md-1 "><strong>Sr. No.</strong></td>
<td class="col-md-2 "><strong>Product Name</strong></td>
<td class="col-md-2 "><strong>Variant Name</strong></td>
<td class="col-md-2 "><strong>Price</strong></td>
<td class="col-md-1 "><strong>Quantity</strong></td>
<td class="col-md-2 "><strong>Tax</strong></td>
<td class="col-md-2 "><strong>Total</strong></td>
</tr>';

	$row=mysqli_fetch_array($find);
	
	
	$tax = ($row['price'] * $row['percentage'])/ 100 ;
	$total = $row['price'];
	
	$insert_draft = mysqli_query($connect_db,"INSERT INTO posoders (SlNo, product_id, varient_id, price, quantity, tax, sub_total, draft, barcode) VALUES('$date_name','".$row['product_id']."','".$row['variant_id']."','".$row['price']."','1','$tax','$total','1','$txt_user')");
	
 $showlist=mysqli_query($connect_db,"SELECT a.id as mainid, a.price as cost, a.quantity as qty, a.tax as txa, a.sub_total as sub, b.*, c.*, d.title,d.percentage,e.name as unitname from posoders as a INNER JOIN product_variant AS b ON a.varient_id=b.id INNER JOIN products as c ON a.product_id=c.id INNER JOIN taxes as d ON c.tax_id = d.id INNER JOIN unit as e ON b.measurement_unit_id = e.id where a.SlNo='$date_name'");
 $i=1;
	 while($show=mysqli_fetch_array($showlist))
 {
echo '<tr class="row">';
echo '<td class="col-md-1">';
echo '<input type="text" name="txt_sr[]" id="txt_sr'.$i.'" placeholder="Sr. No." value="'.$i.'" min="1" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_product[]" id="txt_product'.$i.'" placeholder="Product Name" value="'.$show['name'].'" min="1" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_varient[]" id="txt_varient'.$i.'" placeholder="Variant Name" value="'.$show['measurement'].' '.$show['unitname'].'" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_price[]" id="txt_price'.$i.'" placeholder="Prise" value="'.$show['cost'].'" min="0" required class="form-control " readonly />';
echo '</td>';
echo '<td class="col-md-1">';
echo '<input type="number" name="txt_quantity[]" id="txt_quantity'.$i.'" placeholder="Quantity" value="'.$show['qty'].'" min="1" onchange="getBarcodeDetailsUpdate('.$i.','.$show['mainid'].')" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_tex[]" id="txt_tex'.$i.'" placeholder="Tax" value="'.$show['txa'].' ('.$show['percentage'].'%)" min="0" required class="form-control " readonly />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_total[]" id="txt_total'.$i.'" placeholder="Total" value="'.$show['sub'].'" min="0" required class="form-control " readonly />';
echo '</td>';
echo '</tr>';

$i++;

 }
 $showgrandtotal=mysqli_query($connect_db,"SELECT sum(sub_total) as grandtotal, sum(tax) as texamount from posoders where SlNo='$date_name'");
 $showgrand = mysqli_fetch_array($showgrandtotal);
 
echo '<tr class="row">';
echo '<td class="col-md-12 text-right" colspan="6">';
echo '<label>Total Tax</label>';
echo '</td>';
echo '<td class="col-md-12">';
echo '<input type="text" name="txt_taxamount" id="txt_taxamount" placeholder="Total Tax" value="'.$showgrand['texamount'].'" required class="form-control " readonly  />';
echo '</td>';
echo '</tr>';

echo '<tr class="row">';
echo '<td class="col-md-12 text-right" colspan="6">';
echo '<label>Grand Total</label>';
echo '</td>';
echo '<td class="col-md-12">';
echo '<input type="text" name="txt_grand" id="txt_grand" placeholder="Grand Total" value="'.$showgrand['grandtotal'].'" required class="form-control " readonly  />';
echo '</td>';
echo '</tr>';
 }
 else
 {
echo '<tr class="row">
<td class="col-md-1 "><strong>Sr. No.</strong></td>
<td class="col-md-2 "><strong>Product Name</strong></td>
<td class="col-md-2 "><strong>Variant Name</strong></td>
<td class="col-md-2 "><strong>Price</strong></td>
<td class="col-md-1 "><strong>Quantity</strong></td>
<td class="col-md-2 "><strong>Tax</strong></td>
<td class="col-md-2 "><strong>Total</strong></td>
</tr>';
 $showlist=mysqli_query($connect_db,"SELECT a.id as mainid, a.price as cost, a.quantity as qty, a.tax as txa, a.sub_total as sub, b.*, c.*, d.title,d.percentage,e.name as unitname from posoders as a INNER JOIN product_variant AS b ON a.varient_id=b.id INNER JOIN products as c ON a.product_id=c.id INNER JOIN taxes as d ON c.tax_id = d.id INNER JOIN unit as e ON b.measurement_unit_id = e.id where a.SlNo='$date_name'");
 $i=1;
	 while($show=mysqli_fetch_array($showlist))
 {
echo '<tr class="row">';
echo '<td class="col-md-1">';
echo '<input type="text" name="txt_sr[]" id="txt_sr'.$i.'" placeholder="Sr. No." value="'.$i.'" min="1" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_product[]" id="txt_product'.$i.'" placeholder="Product Name" value="'.$show['name'].'" min="1" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_varient[]" id="txt_varient'.$i.'" placeholder="Variant Name" value="'.$show['measurement'].' '.$show['unitname'].'" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_price[]" id="txt_price'.$i.'" placeholder="Prise" value="'.$show['cost'].'" min="0" required class="form-control " readonly />';
echo '</td>';
echo '<td class="col-md-1">';
echo '<input type="number" name="txt_quantity[]" id="txt_quantity'.$i.'" placeholder="Quantity" value="'.$show['qty'].'" min="1" onchange="getBarcodeDetailsUpdate('.$i.','.$show['mainid'].')" required class="form-control "  />';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_tex[]" id="txt_tex'.$i.'" placeholder="Tax" value="'.$show['txa'].' ('.$show['percentage'].'%)" min="0" required class="form-control " readonly />';
echo '</td>';
echo '</td>';
echo '<td class="col-md-2">';
echo '<input type="text" name="txt_total[]" id="txt_total'.$i.'" placeholder="Total" value="'.$show['sub'].'" min="0" required class="form-control " readonly />';
echo '</td>';
echo '</tr>';

$i++;

 }
 
 $showgrandtotal=mysqli_query($connect_db,"SELECT sum(sub_total) as grandtotal, sum(tax) as texamount from posoders where SlNo='$date_name'");
 $showgrand = mysqli_fetch_array($showgrandtotal);
 
echo '<tr class="row">';
echo '<td class="col-md-12 text-right" colspan="6">';
echo '<label>Total Tax</label>';
echo '</td>';
echo '<td class="col-md-12">';
echo '<input type="text" name="txt_taxamount" id="txt_taxamount" placeholder="Total Tax" value="'.$showgrand['texamount'].'" required class="form-control " readonly  />';
echo '</td>';
echo '</tr>';

echo '<tr class="row">';
echo '<td class="col-md-12 text-right" colspan="6">';
echo '<label>Grand Total</label>';
echo '</td>';
echo '<td class="col-md-12">';
echo '<input type="text" name="txt_grand" id="txt_grand" placeholder="Grand Total" value="'.$showgrand['grandtotal'].'" required class="form-control " readonly  />';
echo '</td>';
echo '</tr>';


	 
	 
 }
 
 }
 exit;
}
?>