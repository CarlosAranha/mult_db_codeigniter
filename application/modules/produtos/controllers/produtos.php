<?php if ( ! defined('BASEPATH')) exit('Sem acesso direto roteiro permitido');
/*
|Author: Carlos Aranha
|Date: 30/06/2015
|Version: 1.0
*/
class Produtos extends MY_Controller{
	
	function __construct(){
		parent::__construct();
		$this->load->model("produtos_model");
	}
	
	function index(){
		$data['main_content'] = 'w_produtos';
                $data['assets']       = $this->assets;
		$data['lit_produtos'] = $this->produtos_model->getProdutos();
                $this->load->view('layout', $data); 
	}
	
}

?>