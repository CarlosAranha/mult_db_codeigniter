 
<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <br><br>
        <h1 class="header center orange-text"><?= $app ?></h1>
        <div class="row center">
            <h5 class="header col s12 light"><?= $descricao ?></h5>
        </div>
        <div class="row center">
            <a href="" id="download-button" class="btn-large waves-effect waves-light orange">GitHub</a>
        </div>
        <br><br>

    </div>
</div>


<div class="container">
    <div class="section">
        <!--   Icon Section   -->
        <div class="row">
            <?php foreach ($dados_home as $key => $it): ?>
                <div class="col s12 m4">
                    <div class="icon-block">
                        <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
                        <h5 class="center"><?= $it->key ?></h5>

                        <p class="light">
                            Resultado da busca no DB definido nas configurações da aplicação
                        </p>
                    </div>
                </div>

                <div class="col s12 m4">
                    <div class="icon-block">
                        <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
                        <h5 class="center"><?= $it->by ?></h5>

                        <p class="light">Modificado as configurações do core no Codeigniter</p>
                    </div>
                </div>

                <div class="col s12 m4">
                    <div class="icon-block">
                        <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
                        <h5 class="center"><?= $it->descricao ?></h5>

                        <p class="light">
                            Implementado nova definição no arquivo index.php (CONFPATH)
                        </p>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

    </div>
</div>