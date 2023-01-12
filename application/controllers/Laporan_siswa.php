<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan_siswa extends CI_Controller {
    private $kode_menu = '';
	private $kelompok = 'laporan';
	private $url = 'Laporan_siswa';

  public function __construct(){

    parent::__construct();
    $this->load->helper('url');
    $this->load->model('cbt_user_model');
    $this->load->model('cbt_user_grup_model');
    $this->load->model('cbt_tes_model');
    $this->load->model('cbt_tes_token_model');
    $this->load->model('cbt_tes_topik_set_model');
    $this->load->model('cbt_tes_user_model');
    $this->load->model('cbt_tesgrup_model');
    $this->load->model('cbt_soal_model');
    $this->load->model('cbt_jawaban_model');
    $this->load->model('cbt_tes_soal_model');
    $this->load->model('cbt_tes_soal_jawaban_model');
    $this->load->model('Siswa_model');

  }

  public function index(){
    $data['kode_menu'] = $this->kode_menu;
    $data['url'] = $this->url;

    $programs = $this->Siswa_model->getProgram();
    $data['programs'] = $programs;

    $semesters = $this->Siswa_model->getSemester();
    $data['semesters'] = $semesters;

    $namas = $this->Siswa_model->getName();
    $data['namas'] = $namas;

    $kelass = $this->Siswa_model->getKelas();
    $data['kelass'] = $kelass;

    $activitys = $this->Siswa_model->getActivity();
    $data['activitys'] = $activitys;
    
    $totals = $this->Siswa_model->getTotal();
    $data['totals'] = $totals;
    
    // load view

    $this->template->display_admin($this->kelompok.'/laporan_siswa', 'Laporan_siswa', $data);
}

  public function userList(){

    // POST data
    $postData = $this->input->post();

    // Get data
    $data = $this->Siswa_model->getUsers($postData);

    echo json_encode($data);
  }

}