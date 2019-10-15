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

          <span class="caption-subject bold uppercase">Add Emergency Task
          </span>
        </div>
      </div>
      <div class="portlet-body form">
         <form class="m-form m-form--fit m-form--label-align-right" name="insert_form" id="insert_form" method="POST" action="<?php echo base_url('saveEmergencyTask'); ?>">
        <div class="row">
          <div class="form-group col-sm-5">
            <label for="username">Area
            </label>
           
              <input type="text" class="form-control m-input m-input--air"  name="area"  id="area"  placeholder="Area">
           
          </div>
            <div class="form-group col-sm-5">
            <label for="username">Location
            </label>
              <input type="text" class="form-control m-input m-input--air"  name="location"  id="location"  placeholder="Location">
          </div>
          <div class="form-group col-sm-5">
            <label for="username">Task
            </label>
              <input type="text" class="form-control m-input m-input--air"  name="task"  id="task"  placeholder="Task">
          </div>
            <div class="form-group col-sm-5">
            <label for="username">Description
            </label>
              <input type="text" class="form-control m-input m-input--air"  name="dispution"  id="dispution"  placeholder="Dispution">
          </div>
           <div class="form-group col-sm-5">
            <label for="username">Date And Time
            </label>
              <input type="date" class="form-control m-input m-input--air"  name="date_time"  id="date_time"  placeholder="Date And Time">
          </div>
           <div class="form-group col-sm-5">
            <label for="username">Time For 20Ms 
            </label>
            
              <input type="text" class="form-control m-input m-input--air"  name="time_for_micro"  id="time_for_micro"  placeholder="Time For Micro">
           
          </div>
          <div class="form-group col-sm-5">
            <label for="username">Time For 100Ms
            </label>
              <input type="date" class="form-control m-input m-input--air"  name="time_10m"  id="time_10m"  placeholder="Time For Micro">
          </div>

           <div class="form-group col-sm-5">
            <label for="username">Expected Dose
            </label>
              <input type="text" class="form-control m-input m-input--air"  name="expected_dose"  id="expected_dose"  placeholder="Expected Dose">
          </div>

          <div class="form-group col-sm-5">
            <label for="username">Expected Time of Stay 
            </label>
              <input type="text" class="form-control m-input m-input--air"  name="expection_time"  id="expection_time"  placeholder="Expection Time">
          </div>
        </div>
      </div>
       <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
      <div class="form-actions">
        <button type="submit" class="btn btn-accent" name="add_emergencyTask" id="add_emergencyTask" value="add_emergencyTask">Add</button>
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
