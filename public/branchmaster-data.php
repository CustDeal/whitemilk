<?php
include_once('includes/custom-functions.php');
$fn = new custom_functions;
if (isset($_GET['id'])) {
  $ID = $db->escapeString($fn->xss_clean($_GET['id']));
} else {
  $ID = "";
}
// create array variable to store data from database
$data = array();
$sql_query = "SELECT * FROM `Branch_Register` where BranchID=" . $ID; 
$db->sql($sql_query);
$res = $db->getResult();
foreach ($res as $row)
  $data = $row;
?>

  <section class="content-header">
    <h1>Products <small><?php echo $data['name']; ?></small></h1>
    <ol class="breadcrumb">
      <li><a href="home.php"><i class="fa fa-home"></i> Home</a></li>
    </ol>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-md-6">
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Branchmaster Detail</h3>
          </div><!-- /.box-header -->
          <div class="box-body">
            <?php
            if ($data['indicator'] == 0) {
              $indicator = "<span class='label label-info'>None</span>";
            }
            if ($data['indicator'] == 1) {
              $indicator = "<span class='label label-success'>Veg</span>";
            }
            if ($data['indicator'] == 2) {
              $indicator = "<span class='label label-danger'>Non-Veg</span>";
            }
            $return_status = $row['return_status'] == 1 ? "<span class='label label-success'>Allowed</span>" : "<span class='label label-danger'>Not Allowed</span>";

            $till_status = '<label class="label label-danger">Not Specified</label>';

            if ($row['till_status'] == 'received') {
              $till_status = '<label class="label label-primary">Received</label>';
            }
            if ($row['till_status'] == 'processed') {
              $till_status = '<label class="label label-info">Processed</label>';
            }
            if ($row['till_status'] == 'shipped') {
              $till_status = '<label class="label label-warning">Shipped</label>';
            }
            if ($row['till_status'] == 'delivered') {
              $till_status = '<label class="label label-success">Delivered</label>';
            }
            $cancelable_status = $row['cancelable_status'] == 1 ? "<span class='label label-success'>Allowed</span>" : "<span class='label label-danger'>Not Allowed</span>";
            ?>
            <table class="table table-bordered">
              <tr>
                <th style="width: 10px">ID</th>
                <td><?php echo $data['BranchID']; ?></td>
              </tr>
              <tr>
                <th style="width: 10px">Branch Name</th>
                <td><?php echo $data['BranchName']; ?></td>
              </tr>
              <tr>
                <th style="width: 10px">Address</th>
               
                <td><?php echo $data['Address']; ?></td>
              </tr>
              <tr>
                <th style="width: 10px">City</th>
                <td><?php echo $data['City']; ?></td>
              </tr>
              <tr>
                <th style="width: 10px">Contact Person</th>
                <td><?php echo $data['ContactPerson']; ?></td>
              </tr>
              <tr>
                <th style="width: 10px">Contact Number</th>
                <td><?php echo $data['ContactNumber']; ?></td>
              </tr>
             
              </tr>
            </table>
          </div><!-- /.box-body -->
          <div class="box-footer clearfix">
            <a href="edit-branchmaster.php?id=<?php echo $data['BranchID']; ?>"><button class="btn btn-primary">Edit</button></a>
            <a href="delete-branchmaster.php?id=<?php echo $data['BranchID']; ?>"><button class="btn btn-danger">Delete</button></a>
          </div>
        </div><!-- /.box -->
      </div>
    </div>
  </section>


<?php 
$db->disconnect(); ?>