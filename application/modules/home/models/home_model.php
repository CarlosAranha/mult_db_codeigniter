<?php if ( ! defined('BASEPATH')) exit('Sem acesso direto roteiro permitido');
/*
|Author: Carlos Aranha
|Date: 30/06/2015
|Version: 1.0
*/

class Home_model extends CI_Model{

	function getData(){
            $this->db->select('H.*');
            $this->db->from('tb_app AS H');
            return $this->db->get()->result();
	}		
}

?>