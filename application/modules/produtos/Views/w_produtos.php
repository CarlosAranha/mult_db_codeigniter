<div class="container">
    <div class="section">
       
        <table class="table hoverable striped bordered">
            <thead>
                <tr>
                    <th>Cod</th>
                    <th>Descricao</th>
                    <th>Und</th>
                    <th>Estoque</th>
                    <th>R$ Custo</th>
                    <th>R$ Venda</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($lit_produtos as $key => $p):?>
                <tr>
                    <td><?=$p->id?></td>
                    <td><?=$p->nome?></td>
                    <td><?=$p->unidade?></td>
                    <td><?=round($p->estoque)?></td>
                    <td><?=$p->preco_custo?></td>
                    <td><?=$p->preco_venda?></td>
                </tr>
                <?php endforeach;?>
                
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="6"><span><?=count($lit_produtos)?> Registros encontrados</span></td>
                </tr>
            </tfoot>
        </table>

    </div>
</div>