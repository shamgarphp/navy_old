<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class EmergencyTask extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();
       
        $this->load->model('EmergencyTaskModel');
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

 
   
    public function getEmergencyTaskObjList()
    {
        $data['emergencyTaskObj']   =  $this->EmergencyTaskModel->getEmergencyTaskObjList();
        $data['file']      = 'navy/EmergencyTaskView/EmergencyTaskList';

        $data['table_js']  = 'admin/all_common_js/admin_tables_js.php';
        $this->load->view('admin_template/main',$data); 
    }

    public function deleteEmergencyTask()
    { 
        if (isset($_GET['emtId']) && !empty($_GET['emtId'])) 
        { 
            $emtId     = $_GET['emtId'];
            $result = $this->EmergencyTaskModel->deleteEmergencyTask($emtId);
            if ($result) 
            {
                $this->session->set_flashdata('success', 'Delete Successfully!');
              redirect('emergencyTaskObj'); 
            } 
            else 
            {
                $this->session->set_flashdata('error', 'Delete failed!');
                redirect('emergencyTaskObj');  
            }
        }
        else
        {
            $this->session->set_flashdata('error', 'Delete failed!');
             redirect('emergencyTaskObj');  
        }
           
    } 

    public function genarateExcel() {

        $this->load->model('EmergencyTaskModel');
        $this->load->library('excel');
        $object = new PHPExcel();
        $object->setActiveSheetIndex(0);
        $table_columns = array("ET_Id","ET_Name","Created Date","Updation Date","Strngth");
        $column = 0;

        foreach ($table_columns as $field) {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;

        }
         $emergencyObj   =  $this->EmergencyTaskModel->getEmergencyTaskObjList(); 
         $excel_row = 2;
        foreach ($emergencyObj as $emergency) {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0,$excel_row,$emergency['et_id']);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1,$excel_row,$emergency['et_name']);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2,$excel_row,$emergency['date_of_creation']);
            $object->getActiveSheet()->setCellValueByColumnAndRow(3,$excel_row,$emergency['date_of_updation']);
            $object->getActiveSheet()->setCellValueByColumnAndRow(4,$excel_row,$emergency['strength']);
             $excel_row++;
        
        } 

        $object_writer = PHPExcel_IOFactory::createWriter($object,'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="EmergencyTask.xls"');
        $object_writer->save('php://output');
    }

    public function addEmergencyTask()
    {   
      $data['file']        = 'navy/EmergencyTaskView/addEmergencyTask';
      $data['validation_js']  = 'admin/all_common_js/frontend_validation_js';
      $this->load->view('admin_template/main',$data);
    }

    public function saveEmergencyTask(){

      if(isset($_POST['add_emergencyTask']) && !empty($_POST['add_emergencyTask'])){
        $result = $this->EmergencyTaskModel->saveEmergencyTask();
        redirect('emergencyTaskObj');
      }
    }

    public function editEmergencyTask(){

      $emtId = $_GET['emtId'];
      $data['emergencyTaskObj'] =  $this->EmergencyTaskModel->getEmergencyTaskById($emtId);
      $data['file']        = 'navy/EmergencyTaskView/editEmergencyTaskView';
      $data['validation_js']  = 'admin/all_common_js/frontend_validation_js';
      $this->load->view('admin_template/main',$data);
      
    }

    public function updateEmergencyTask(){
      $emtId = $_GET['emtId'];
      $result = $this->EmergencyTaskModel->updateEmergencyTask($emtId);
      redirect('emergencyTaskObj');
    }



     
}