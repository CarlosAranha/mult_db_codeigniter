<?php if ( ! defined('BASEPATH')) exit('Sem acesso direto roteiro permitido');
/*
|Author: Carlos Aranha
|Date: 30/06/2015
|Version: 1.0
*/

class Produtos_model extends CI_Model{

	function getProdutos(){
            $this->db->select('P.*');
            $this->db->from('tb_produtos AS P');
            return $this->db->get()->result();
	}		
}

?>