<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Chart extends CI_Controller {
    private $kode_menu = 'Chart';
	private $kelompok = 'laporan';
	private $url = 'Chart';

	public function __construct()
	{
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
		$this->load->model('Chart_model'); 
	}

	public function index()
    { 
        $this->template->display_admin($this->kelompok.'/chart_view', 'Chart');
    } 

    public function chart_data()
    {
        $data = $this->Chart_model->chart_database();
   //     var_dump($data);
     //   die;
        echo json_encode($data);

    }

}