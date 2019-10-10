<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class DoseHistoryModel extends CI_Model
{
    
    
    private $doseHistoryTeam =  "dose_history";
  

	public function __construct() { parent::__construct(); }


    public function getDoseHistoryObjList()
    {
        $this->db->select();

        $query = $this->db->get($this->doseHistoryTeam);

        if($query)
        {
            return $query->result_array();   
        }
        else
        {
            return FALSE;
        }  
    }

    public function deleteDoseHistory($doseId)
    {
        $this->db->select();
        $this->db->from($this->doseHistoryTeam);
        $this->db->where('id',$doseId);
        $query = $this->db->get();
        if ($query->num_rows() > 0) 
        {
            $result_img =  $query->result_array();
 
            $img_delete =  $this->db->delete('dose_history', array('id' => $doseId));
            if ($img_delete)
            {
                return TRUE;
            }
            else
            {
                 return FALSE;
            }

        }
        else
        {
           return FALSE;
        } 
    }


    public function saveDoseHistory()
    { 
        $data = array(
         'p_id' => $this->input->post("p_id"),
         'dose_history' => $this->input->post("dose_history"),
         'et_id' => $this->input->post("et_id")
        );

        $insert = $this->db->insert('dose_history', $data);
        $task_id = $this->db->insert_id();

    }

    public function getDoseHistoryById($doseId){
        $this->db->select('*');
        $this->db->from('dose_history dh');
        $this->db->where('dh.id = '.$doseId);
       
        $query = $this->db->get();
        if ($query->num_rows() > 0) 
        {
            return $query->result_array();
        }
        else
        {
            return FALSE;
        }
    }

    public function updateDoseHistory($doseId){

        $data = array(
         'p_id' => $this->input->post("p_id"),
         'dose_history' => $this->input->post("dose_history"),
         'et_id' => $this->input->post("et_id")
        );

        $this->db->where('id', $doseId);
        $update = $this->db->update('dose_history', $data);
       
    }

}