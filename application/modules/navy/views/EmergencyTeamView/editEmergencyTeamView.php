<div class="page-content-wrapper">
  <!-- BEGIN CONTENT BODY -->
  <div class="page-content">
    <!-- BEGIN PAGE HEAD-->
    <div class="page-head">      
    </div>
    <!-- END PAGE HEAD-->
    <!-- BEGIN PAGE BREADCRUMB -->

    <div class="portlet light bordered">
      <div class="portlet-title">
        <div class="caption font-dark">
              <i class="fa fa-user" aria-hidden="true"></i>

          <span class="caption-subject bold uppercase">Update EmergencyTeam
          </span>
        </div>
      </div>
      <div class="portlet-body form">
          <?php foreach($emergencyObj as $emergency){?>
                  <form class="m-form m-form--fit m-form--label-align-right" name="insert_form" id="insert_form" method="POST" action="<?php echo base_url('updateEmergencyTeam?emtId='.$emergency['id']);?>">
        <div class="row">
         <div class="row ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <div class="col-md-5">
                       <h5>ET-ID</h5>
                        <input type="text" class="form-control m-input m-input--air"  name="et_id"  id="et_id"  placeholder="ET-ID" value="<?php echo ucfirst($emergency['et_id'])?>">
                      </div>
                    
                      <div class="col-md-5">
                        <h5>ET-Name</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="et_name"  id="et_name"  placeholder="ET-Name " value="<?php echo ucfirst($emergency['et_name'])?>">
                      </div>


                      <div class="col-md-5">
                        <h5>Date of Creation</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="date_of_creation"  id="date_of_creation"  placeholder="Date of Creation" value="<?php echo ucfirst($emergency['date_of_creation'])?>">
                      </div>

                      <div class="col-md-5">
                        <h5>Date of Updation</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="date_of_updation"  id="date_of_updation"  placeholder="Date of Updation" value="<?php echo ucfirst($emergency['date_of_updation'])?>">
                      </div>

                       <div class="col-md-5">
                        <h5>Strength</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="strength"  id="strength"  placeholder="Strength" value="<?php echo ucfirst($emergency['strength'])?>">
                      </div>
                      <div class="col-md-5">
                          <div class="table-repsonsive">
                            <span id="error"></span>
                            <table class="table table-bordered" id="item_table">
                            <thead>
                              <tr>
                               <th>Add Member</th>                               
                               <th style="width: 10px;"><button type="button" id="add_row" class="btn btn-success btn-sm addDay"><span class="glyphicon glyphicon-plus"></span></button></th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr id="row_1">                                
                              <td>
                                <input type="text" name="name[]" id="name_1" class="form-control">
                              </td>                                
                              </tr>
                            </tbody>
                            </table>
                            </div>
                      </div>

                </div><br>
          <?php } ?>
        </div>
      </div>
       <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
      <div class="form-actions">
        <button type="submit" class="btn btn-accent" name="add_user" id="add_user" value="add_user">Update</button>
        <button type="reset" class="btn btn-secondary reset" id="cancelBtn" style="background-color: lightgray;">Cancel</button>
      </div>
  </form>
</div>
</div>
</div>
</div>
<!-- END PAGE BASE CONTENT -->
</div>
<!-- END CONTENT BODY -->
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
        // Add new row in the table 
    $("#add_row").unbind('click').bind('click', function() {
      var table = $("#item_table");
      var count_table_tbody_tr = $("#item_table tbody tr").length;
      var row_id = count_table_tbody_tr + 1;

      // console.log(reponse.x);
               var html = '<tr id="row_'+row_id+'">'+
                    '</td>'+ 
                    '<td><input type="text" name="name[]" id="name_'+row_id+'" class="form-control"></td>'+                    

                    '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="glyphicon glyphicon-minus"></span></button></td>'
                    '</tr>';

                if(count_table_tbody_tr >= 1) {
                $("#item_table tbody tr:last").after(html);  
              }
              else {
                $("#item_table tbody").html(html);
              }
          });

        $(document).on('click', '.remove', function(){
              $(this).closest('tr').remove();
          });
        });
</script>
