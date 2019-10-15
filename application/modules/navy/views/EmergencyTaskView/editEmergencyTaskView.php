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
                        <h5>Dispution</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="dispution"  id="dispution"  placeholder="Dispution" value="<?php echo ucfirst($emergencyTask['dispution'])?>">
                      </div>

                      <div class="col-md-5">
                        <h5>Date And Time</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="date_time"  id="date_time"  placeholder="Date And Time" value="<?php echo ucfirst($emergencyTask['date_time'])?>">
                      </div>

                       <div class="col-md-5">
                        <h5>Expection Time</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="expection_time"  id="expection_time"  placeholder="Expection Time" value="<?php echo ucfirst($emergencyTask['expection_time'])?>">
                      </div>
                      <div class="col-md-5">
                        <h5>Time For Micro</h5>
                         <input type="text" class="form-control m-input m-input--air"  name="time_for_micro"  id="time_for_micro"  placeholder="Time For Micro" value="<?php echo ucfirst($emergencyTask['time_for_micro'])?>">
                      </div>
                      <div class="col-md-5">
                        <h5>Time For 10M</h5>
                         <input type="date" class="form-control m-input m-input--air"  name="time_10m"  id="time_10m"  placeholder="Time For 10M" value="<?php echo ucfirst($emergencyTask['time_10m'])?>">
                      </div>

                </div><br>
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
