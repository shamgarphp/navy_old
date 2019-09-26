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
            <i class="fa fa-list" aria-hidden="true"></i>
          <span class="caption-subject bold uppercase">AGMS Channel Update
          </span>
        </div>
      </div>
      <div class="portlet-body form">
        <form  action="" method="POST" enctype="multipart/form-data" id="package_update_form">
        <div class="row">

           <div class="form-group col-sm-12">
            <span class="caption-subject bold uppercase">Location</span>
            <div class="input-group">
              <input type="text" class="form-control" id="location" placeholder="Location" name="location" value="<?php if(isset($agmsChannelEdit['location']) && !empty($agmsChannelEdit['location'])){ echo $agmsChannelEdit['location']; } ?>">
              <span class="input-group-addon">
              </span>
            </div>
          </div>
 
          <div class="form-group col-sm-12">
            <span class="caption-subject bold uppercase">Compartment</span>
            <div class="input-group">
              <input type="text" class="form-control" id="compartment" placeholder="Compartment" name="compartment" value="<?php if(isset($agmsChannelEdit['compartment']) && !empty($agmsChannelEdit['compartment'])){ echo $agmsChannelEdit['compartment']; } ?>">
              <span class="input-group-addon">
              </span>
            </div>
          </div>
          <div class="form-group col-sm-12">
            <span class="caption-subject bold uppercase">Area</span>
            <div class="input-group">
              <input type="text" class="form-control" id="area" placeholder="Area" name="area" value="<?php if(isset($agmsChannelEdit['area']) && !empty($agmsChannelEdit['area'])){ echo $agmsChannelEdit['area']; } ?>">
              <span class="input-group-addon">
              </span>
            </div>
          </div>
          <div class="form-group col-sm-12">
            <span class="caption-subject bold uppercase">RadType</span>
            <div class="input-group">
              <input type="text" class="form-control" id="rad_type" placeholder="RadType" name="rad_type" value="<?php if(isset($agmsChannelEdit['rad_type']) && !empty($agmsChannelEdit['rad_type'])){ echo $agmsChannelEdit['rad_type']; } ?>">
              <span class="input-group-addon">
              </span>
            </div>
          </div>
        </div>
        <br> 

          </div> 

      

    

      </div>
      <div class="form-actions">
        <button type="submit" class="btn sbold green" name="agmsChannelEdit"  id="agmsChannelEdit" value="agmsChannelEdit">Update
        </button> 
         <a   id="package_update" class="btn sbold red" class="btn default">Reset</a> 
      </div>
       <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
  </form>
</div>
</div>
</div>
</div>
<!-- END PAGE BASE CONTENT -->
</div>
<!-- END CONTENT BODY -->
</div>
