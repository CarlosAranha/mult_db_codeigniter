## Codeigniter 2.2.2 HMVC Multiplos Sites com DB e Config Individuais

As vezes temos um projeto onde queremos ter vários clientes com a mesma interface, porém com Bancos de Bados e configurações individuais.
Neste exemplo mostro que é possível fazer isso com o Framework Codeigniter (v2.2.2) e a extensão MX para criar aplicações HMVC. 
Também creio que você já tenha usado a extenção MX

### index.php
Foram efetuadas as seguintes edições. 

* 101 - de -> $system_path = 'system'; para -> $system_path = '../system';
* 116 - de -> $application_folder = 'application'; para -> $application_folder = '../application';
* Adicionado  -> $config_folder = 'private';
* Adicionado -> define('CONFPATH', $config_folder.'/'); logo abaixo de define('APPPATH', BASEPATH.$application_folder.'/');
* O arquivo index.php foi  copiado para app1/ e copiado para app2/

### app1/ e app2/

Nestes diretorios estão o requisitos individuais de cada site dentro do diretorio private/ onde tem o diretorio config/ com as configurações do site -> config.php e configurações de banco de dados -> database.php

Para que o framework podece acessar estes arquivos foi modificado o core/ do framework

### system/core/Config.php
Foram efetuadas as seguintes edições. 

* adicionado-> public $_config_paths1 = array(CONFPATH);
* 111 - Substituir -> foreach ($this->_config_paths as $path) por foreach ($this->_config_paths1 as $path)


### system/core/Common.php
Foram efetuadas as seguintes edições. 

* 224 substituir -> $file_path = APPPATH.'config/'.ENVIRONMENT... por $file_path = CONFPATH.'config/'.ENVIRONMENT
* e mais $file_path = APPPATH.'config/config.php'; por $file_path = CONFPATH.'config/config.php';
* Adicionado  -> $config_folder = 'private';


### system/database/DB.php
Foram efetuadas as seguintes edições. 

* Substituir -> $file_path = APPPATH.'config/'.ENVIRON... por $file_path = CONFPATH.'config/'.ENVIRON...
* e mais  if ( ! file_exists($file_path = APPPATH.'config/database.php')) por if ( ! file_exists($file_path = CONFPATH.'config/database.php'))

Pronto, todas as funcionalidades agora estão integradas posibilitando assim mais de um banco de dados 
na mesma aplicação. 







