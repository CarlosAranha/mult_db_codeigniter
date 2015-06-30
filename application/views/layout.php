<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>Codeigniter 2.2.2 MultDatabase na mesma Aplicação</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="<?=$assets?>css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="<?=$assets?>css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
  <nav class="teal lighten-3" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="#" class="brand-logo">Logo</a>
      <ul class="right hide-on-med-and-down">
            <li><a href="<?=base_url()?>">Home</a></li>
            <li><a href="<?=base_url()?>produtos">Produtos</a></li>
            <li><a href="<?=base_url()?>contato">Contato</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
            <li><a href="<?=base_url()?>">Home</a></li>
            <li><a href="<?=base_url()?>produtos">Produtos</a></li>
            <li><a href="<?=base_url()?>contato">Contato</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
    <?php
        $this->load->view($main_content);
    ?>
    <br><br>

    <div class="section">

    </div>
  </div>

  <footer class="page-footer teal accent-4">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Sobre</h5>
          <p class="grey-text text-lighten-4">
              22 Anos, Tecnico em  Informática para Internet pelo Instituto Federal de Ciência e tecnologia (IFTO) campus Araguaína.
          </p>

        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Arquivos</h5>
          <ul>
            <li><a class="white-text" href="#">GitHub</a></li>
          </ul>
        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Contato</h5>
          <ul>
            <li><a class="white-text" href="http://alfadevelop.com.br">WebSite</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
        By <a class="orange-text text-lighten-3" href="http://alfadevelop.com.br">Carlos Aranha - Carregado em <strong>{elapsed_time}</strong> segundos</a>
      </div>
    </div>
  </footer>


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="<?=$assets?>js/materialize.js"></script>
  <script src="<?=$assets?>js/init.js"></script>

  </body>
</html>