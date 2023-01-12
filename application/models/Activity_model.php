<?php
class Activity_model extends CI_Model{
    public function __construct(){
        $this->load->database();
    }

    public function getbyId(){
        return $this->db->get('activity')->result();
       
    }
}
?>