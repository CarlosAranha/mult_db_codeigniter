<?php if ( ! defined('BASEPATH')) exit('Sem acesso direto roteiro permitido');
/*
|Author: Carlos Aranha
|Date: 30/06/2015
|Version: 1.0
*/

class Home extends MY_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->model('home_model');
    }
            function index(){
		$data['main_content'] = 'w_home';
                $data['app']          = $this->config->item('nome_app');
                $data['descricao']    = $this->config->item('desc');
                $data['dados_home']   = $this->home_model->getData();
                $data['assets']       = $this->assets;
		$this->load->view('layout', $data);    
	}
		
}

?>