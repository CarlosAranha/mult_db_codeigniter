<?php if ( ! defined('BASEPATH')) exit('Sem acesso direto roteiro permitido');
/*
|Author: Carlos Aranha
|Date: 30/06/2015
|Version: 1.0
*/
class Contato extends MY_Controller {
    
	public function index()
	{
		$data['main_content'] = 'w_contato';
                $data['assets']       = $this->assets;
                $this->load->view('layout', $data); 
	}
}