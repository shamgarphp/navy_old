<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Navy extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Navy_model');
        modules::run('admin/admin/is_logged_in');
        $this->load->library('upload');
    }

    public function index()
    {
        $data['package_list'] =  $this->Package_model->getall_packages(); 
        $data['file']         = 'packages/package/pakage_list';
        $data['table_js']    = 'admin/all_common_js/admin_tables_js.php';
        $this->load->view('admin_template/main',$data); 
    }

    

    public function view_package() 
    {      
        $package_id = base64_decode($_GET['idpackage']); 
        if (isset($_GET['idpackage']) && !empty($_GET['idpackage'])) 
        {
            $package_id              = base64_decode($_GET['idpackage']);
            $data['package_view']     = $this->Package_model->package_view($package_id);
            $data['file']             = 'packages/package/package_view';
             /*load admin templeate.send all data this admin templeate*/
            $this->load->view('admin_template/main', $data);
        }
    }  

    
  

    public function delete_navy() 
    {  
        if (isset($_GET['idpackage']) && !empty($_GET['idpackage'])) 
        { 
            $package_id     = $_GET['idpackage'];
            $result = $this->Navy_model->delete_navy($package_id);
            if ($result) 
            {
                $this->session->set_flashdata('success', 'Delete Successfully!');
              redirect('navyCustomers'); 
            } 
            else 
            {
                $this->session->set_flashdata('error', 'Delete failed!');
                redirect('navyCustomers');  
            }
        }
        else
        {
            $this->session->set_flashdata('error', 'Delete failed!');
             redirect('navyCustomers');  
        }
           
    }


    public function navy_products()
    {
        $data['customers_list'] =  $this->Navy_model->getall_customers();
        $data['file']         = 'navy/navy_products/customer_list';
        $data['table_js']    = 'admin/all_common_js/admin_tables_js.php';
        $this->load->view('admin_template/main',$data); 
    } 

    //update marine
        public function smrsEdit() 
    {  
        if (isset($_GET['smrsId']) && !empty($_GET['smrsId'])) 
        {    
            $smrsId  = base64_decode($_GET['smrsId']);
            $data['smrsEdit'] = $this->Sub_Marine_Model->smrsEdit($smrsId); 
           
           /* $this->form_validation->set_rules('package_name','product','required|trim|strtolower');
            $this->form_validation->set_rules('service','service','required|trim');
            $this->form_validation->set_rules('events[]','events','required|trim');
            $this->form_validation->set_rules('price','price','required|trim');
             $this->form_validation->set_rules('discount','discount','required|trim');
            $this->form_validation->set_rules('package_desc','package description','required|trim');
            $this->form_validation->set_rules('price_type','price type','required|trim');*/
            if (sizeof($data['smrsEdit']) > 0) 
            {
               
                $data['file']           = 'navy/sub_marine_view/smrs_edit';
                //$data['custom_js']      = 'packages/package/js/package_js';
                /*event front end  validations*/
              //  $data['validation_js']       = 'admin/all_common_js/frontend_validation_js';
                /*load admin templeate.send all data this admin templeate*/
                $this->load->view('admin_template/main', $data);
            }
            if(!empty($_POST['update_smrs']) && isset($_POST['update_smrs'])){
                 $data = array(

                            'dtntm' => $this->input->post("dtntm"),
                            'compartment' => $this->input->post("compartment"),
                            'rgms_channel' => $this->input->post("rgms_channel"),
                            'radiation_level' => $this->input->post("radiation_level"),
                            'radsit' => $this->input->post("radsit"),
                               
                    );
        
                    $result = $this->Sub_Marine_Model->update_smrs($data,$smrsId);
                    $this->session->set_flashdata('success','Updated Successfully!');
                        redirect('submarinelist'); 
            } 
           
            
        }
        else
        {
           $this->session->set_flashdata('error', 'updated failed. please try again!');
           redirect('submarinelist'); 
        }
    }


    


}