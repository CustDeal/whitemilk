<?php
include_once('includes/functions.php');
date_default_timezone_set('Asia/Kolkata');
$function = new functions;
include_once('includes/custom-functions.php');
$fn = new custom_functions;


if (isset($_POST['btnAdd'])) {
    if (ALLOW_MODIFICATION == 0 && !defined(ALLOW_MODIFICATION)) {
        echo '<label class="alert alert-danger">This operation is not allowed in demo panel!.</label>';
        return false;
    }
        $BranchName = $db->escapeString($fn->xss_clean($_POST['BranchName']));
        $City = $db->escapeString($fn->xss_clean($_POST['City']));
        $ContactPerson = $db->escapeString($fn->xss_clean($_POST['ContactPerson']));
        $Address = $db->escapeString($fn->xss_clean($_POST['Address']));
		$ContactNumber = $db->escapeString($fn->xss_clean($_POST['ContactNumber']));
      
        // create array variable to handle error
        $error = array();

        if (empty($BranchName)) {
            $error['BranchName'] = " <span class='label label-danger'>Required!</span>";
        }
        if (empty($City)) {
            $error['City'] = " <span class='label label-danger'>Required!</span>";
        }

        
        if (empty($ContactPerson)) {
            $error['ContactPerson'] = " <span class='label label-danger'>Required!</span>";
        }

        if (empty($Address)) {
            $error['Address'] = " <span class='label label-danger'>Required!</span>";
        }
		
		if (empty($ContactNumber)) {
            $error['ContactNumber'] = " <span class='label label-danger'>Required!</span>";
        }
       
        if (!empty($BranchName) && !empty($City) && !empty($ContactPerson) && !empty($ContactNumber) && !empty($Address)) {
           
            // insert new data to product table
            $sql = "INSERT INTO `Branch_Register`(`BranchName`, `Address`, `City`, `ContactPerson`, `ContactNumber`) VALUES ('$BranchName','$Address','$City','$ContactPerson','$ContactNumber')";
            // echo $sql;
            $db->sql($sql);
            $branch_master_result = $db->getResult();
            if (!empty($branch_master_result)) {
                $branch_master_result = 0;
            } else {
                $branch_master_result = 1;
            }
            if ($branch_master_result == 1) {
                $error['add_menu'] = "<section class='content-header'>
                                                <span class='label label-success'>Branch Master Added Successfully</span>
                                                <h4><small><a  href='branchmaster.php'><i class='fa fa-angle-double-left'></i>&nbsp;&nbsp;&nbsp;Back to BranchMaster</a></small></h4>
                                                 </section>";
            } else {
                $error['add_menu'] = " <span class='label label-danger'>Failed</span>";
            }
        }

}
?>
<section class="content-header">
    <h1>Add Branch Master</h1>
    <?php echo isset($error['add_menu']) ? $error['add_menu'] : ''; ?>
    <ol class="breadcrumb">
        <li><a href="home.php"><i class="fa fa-home"></i> Home</a></li>
    </ol>

</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Add Branch Master</h3>
                </div>
                <div class="box-header">
                    <?php echo isset($error['cancelable']) ? '<span class="label label-danger">Till status is required.</span>' : ''; ?>
                </div>

                <!-- /.box-header -->
                <!-- form start -->
                <form id='add_branchmaster_form' method="post" enctype="multipart/form-data">
                    <?php
                    $sql = "SELECT * FROM unit";
                    $db->sql($sql);
                    $res_unit = $db->getResult();
                    ?>
                    <div class="box-body">
                        <div class="form-group">
                            <div class='col-md-12'>
                                <label for="exampleInputEmail1">BranchMaster</label> <i class="text-danger asterik">*</i><?php echo isset($error['BranchName']) ? $error['BranchName'] : ''; ?>
                                <input type="text" class="form-control" name="BranchName" required>
                            </div>
                           
                            </div>
							 <hr>
							<div class="form-group">
							<div class='col-md-12'>
                            <label for="description">Address :</label> <i class="text-danger asterik">*</i><?php echo isset($error['Address']) ? $error['Address'] : ''; ?>
                            <textarea name="Address" id="Address" class="form-control" rows="8"></textarea>
                            <script type="text/javascript" src="css/js/ckeditor/ckeditor.js"></script>
                            <script type="text/javascript">
                                CKEDITOR.replace('description');
                            </script>
                        </div>
						</div>
							 <hr>
							<div class="form-group">
                            <div class='col-md-12'>
                                <label for="exampleInputEmail1">City</label> <i class="text-danger asterik">*</i><?php echo isset($error['City']) ? $error['City'] : ''; ?>
                                <input type="text" class="form-control" name="City" required>
                            </div>
                           
                            </div>
							 <hr>
							<div class="form-group">
                            <div class='col-md-12'>
                                <label for="exampleInputEmail1">Contact Person</label> <i class="text-danger asterik">*</i><?php echo isset($error['ContactPerson']) ? $error['ContactPerson'] : ''; ?>
                                <input type="text" class="form-control" name="ContactPerson" required>
                            </div>
                           
                            </div>
							 <hr>
							<div class="form-group">
                            <div class='col-md-12'>
                                <label for="exampleInputEmail1">Contact Number</label> <i class="text-danger asterik">*</i><?php echo isset($error['ContactNumber']) ? $error['ContactPerson'] : ''; ?>
                                <input type="text" class="form-control" name="ContactNumber" required>
                            </div>
                           
                            </div>
                        </div>
                        <hr>
                        
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
    var changeCheckbox = document.querySelector('#return_status_button');
    var init = new Switchery(changeCheckbox);
    changeCheckbox.onchange = function() {
        if ($(this).is(':checked')) {
            $('#return_status').val(1);
        } else {
            $('#return_status').val(0);
        }
    };
</script>



<script>
    $('#add_branchmaster_form').validate({

        ignore: [],
        debug: false,
        rules: {
            BranchName: "required",
            City: "required",
            ContactPerson: "required",
            ContactNumber: "required",
             Address: {
                required: function(textarea) {
                    CKEDITOR.instances[textarea.id].updateElement();
                    var editorcontent = textarea.value.replace(/<[^>]*>/gi, '');
                    return editorcontent.length === 0;
                }
            }
        }
    });
    $('#btnClear').on('click', function() {
        for (instance in CKEDITOR.instances) {
            CKEDITOR.instances[instance].setData('');
        }
    });
</script>
<script>
    $(document).on('click', '.remove_variation', function() {
        $(this).closest('.row').remove();
    });


    $(document).on('change', '#category_id', function() {
        $.ajax({
            url: "public/db-operation.php",
            data: "category_id=" + $('#category_id').val() + "&change_category=1",
            method: "POST",
            success: function(data) {
                $('#subcategory_id').html("<option value=''>---Select Subcategory---</option>" + data);
            }
        });
    });

    $(document).on('change', '#packate', function() {
        $('#variations').html("");
        $('#packate_div').show();
        $('#packate_server_hide').hide();
        $('.packate_div').children(":input").prop('disabled', false);
        $('#loose_div').hide();
        $('.loose_div').children(":input").prop('disabled', true);
        $('#loose_stock_div').hide();
        $('#loose_stock_unit_id').hide();
        $('#loose_stock_div').children(":input").prop('disabled', true);

    });
    $(document).on('change', '#loose', function() {
        $('#variations').html("");
        $('#loose_div').show();
        $('.loose_div').children(":input").prop('disabled', false);
        $('#loose_stock_div').show();
        $('#loose_stock_div').children(":input").prop('disabled', false);
        $('#packate_server_hide').show();
        $('#packate_div').hide();
        $('.packate_div').children(":input").prop('disabled', true);

    });

    // function validate_amount(value) {
    //     if (parseInt(value) < 0) {
    //         alert('You Can not enter amount less than zero.');
    //     }
    // }
</script>