<?php (defined('BASEPATH')) OR exit('Sem acesso direto roteiro permitido');

/* load MX_Controller class */
require APPPATH."third_party/MX/Controller.php";

class MY_Controller extends MX_Controller {
    public $assets;
    
    public function __construct() {
        parent::__construct();
       
        //$this->output->enable_profiler(TRUE);
        
        return $this->assets = $this->config->item('assets_url');
    }
}

?>