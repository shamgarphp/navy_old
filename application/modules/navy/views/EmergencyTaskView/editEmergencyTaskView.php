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

          <span class="caption-subject bold uppercase">Update Emergency Task
          </span>
        </div>
      </div>
      <div class="portlet-body form">
          <?php foreach($emergencyTaskObj as $emergencyTask){?>
                  <form class="m-form m-form--fit m-form--label-align-right" name="insert_form" id="insert_form" method="POST" action="<?php echo base_url('updateEmergencyTask?emtId='.$emergencyTask['id']);?>">
        <div class="row">
         <div class="row ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <div class="col-md-5">
                       <h5>Area</h5>
                        <input type="text" class="form-control m-input m-input--air"  name="area"  id="area"  placeholder="Area" value="<?php echo ucfirst($emergencyTask['area'])?>">
                      </div>
                    
                      <div class="col-md-5">
                        <h5>Location</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="location"  id="location"  placeholder="Location " value="<?php echo ucfirst($emergencyTask['location'])?>">
                      </div>
                      <div class="col-md-5">
                        <h5>Location</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="task"  id="task"  placeholder="Task " value="<?php echo ucfirst($emergencyTask['task'])?>">
                      </div>


                      <div class="col-md-5">
                        <h5>Description</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="dispution"  id="dispution"  placeholder="Dispution" value="<?php echo ucfirst($emergencyTask['dispution'])?>">
                      </div>

                      <div class="col-md-5">
                        <h5>Date And Time</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="date_time"  id="date_time"  placeholder="Date And Time" value="<?php echo ucfirst($emergencyTask['date_time'])?>">
                      </div>

                       <div class="col-md-5">
                        <h5>Expected Time of Stay </h5>
                         <input type="text" class="form-control m-input m-input--air"  name="expection_time"  id="expection_time"  placeholder="Expection Time" value="<?php echo ucfirst($emergencyTask['expection_time'])?>">
                      </div>
                      <div class="col-md-5">
                        <h5>Expected Dose </h5>
                         <input type="text" class="form-control m-input m-input--air"  name="expected_dose"  id="expected_dose"  placeholder="Expected Dose Time" value="<?php echo ucfirst($emergencyTask['expected_dose'])?>">
                      </div>
                      <div class="col-md-5">
                        <h5>Time For 20Ms</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="time_for_micro"  id="time_for_micro"  placeholder="Time For Micro" value="<?php echo ucfirst($emergencyTask['time_for_micro'])?>">
                      </div>
                      <div class="col-md-5">
                        <h5>Time For 100Ms</h5>
                         <input type="datetime" class="form-control m-input m-input--air"  name="time_10m"  id="time_10m"  placeholder="Time For 10M" value="<?php echo ucfirst($emergencyTask['time_10m'])?>">
                      </div>

                </div><br>
                           <div class="row">
                  <div class="col-md-10">
                          <div class="table-repsonsive">
                            <span id="error"></span>
                            <table class="table table-bordered" id="item_table">
                            <thead>
                              <tr>
                               <th>Team Name</th>
                               <th>Dose History</th>
                               <th>ET Id</th>                           
                               <th style="width: 10px;"><button type="button" id="add_row" class="btn btn-success btn-sm addDay"><span class="glyphicon glyphicon-plus"></span></button></th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr id="row_1">                                
                              <td>                                
                                <select name="member[]" id="member_1" class="form-control" onchange="emgTask(1)">
                                  <option value="">Select Member</option>
                                    <?php foreach ($emergencyTeamObj as $k => $v): ?>
                                    <option value="<?php echo $v['id'] ?>"><?php echo $v['et_name'] ?></option>
                                  <?php endforeach ?>
                              </select>
                              </td>
                              <td>
                                <input type="text" name="dose_history[]" id="dose_history_1" class="form-control" disabled autocomplete="off">                                
                              </td> 
                              <td>
                                <input type="text" name="et_id[]" id="et_id_1" class="form-control" disabled autocomplete="off">                                
                              </td>
                                                          
                              </tr>
                            </tbody>
                            </table>
                            </div>
                      </div>
                </div>
          <?php } ?>
        </div>
      </div>
       <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
      <div class="form-actions">
        <button type="submit" class="btn btn-accent" name="emergencyTaskObj" id="emergencyTaskObj" value="emergencyTaskObj">Update</button>
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

<script type="text/javascript">
      $(document).ready(function(){
        // Add new row in the table 
    // $(".select_group").select2();
    $("#add_row").unbind('click').bind('click', function() {
      var table = $("#item_table");
      var count_table_tbody_tr = $("#item_table tbody tr").length;
      var row_id = count_table_tbody_tr + 1;

               var html = '<tr id="row_'+row_id+'">'+
                   
                    '<td>'+ 
                      '<select class="form-control select_group product" data-row-id="'+row_id+'" id="member_'+row_id+'" name="member[]" onchange="emgTask('+row_id+')">'+
                          '<option value="">Select</option>';
                        <?php foreach ($emergencyTeamObj as $emergencyTeam) {?>
                          html += '<option value="<?php echo $emergencyTeam['id'];?>"><?php echo $emergencyTeam['et_name'];?></option>';
                        <?php }?>                       
                        
                        html += '</select>'+
                      '</td>'+
                      '<td><input type="text" name="dose_history[]" id="dose_history_'+row_id+'" class="form-control" disabled></td>'+
                      '<td><input type="text" name="et_id[]" id="et_id_'+row_id+'" class="form-control" disabled></td>'+
                     

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