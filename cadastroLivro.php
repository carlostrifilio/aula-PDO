<?php
require_once ('conexao.php');

$consulta = $conexaoDB->prepare('SELECT * from editora');
$resultado = $consulta->execute();

$editoras = $consulta->fetchAll(PDO::FETCH_ASSOC);
if (isset($_POST['cadastro-livro'])) {

    // verifica campos preenchidos
    if ($_POST['nome'] != "" && $_POST['descricao'] != ""){

// prepara a query
$query = $conexaoDB->prepare('INSERT INTO livraria (nome,descricao,preco,fk_editora,fk_categoria,imagem) VALUES (:nome, :descricao, :preco, :fk_editora,49,sem-imagem)');

$resultado = $query->execute([
    ":nome"=>$_POST['nome'],
    ":descricao"=>$_POST['descricao'],
    ":preco"=>$_POST['preco'],
    ":fk_editora"=>$_POST[fk_editora],
    ]);

    // se tudo der certo, redireciona para lista de livros
header('location: livros.php');
    }
}


?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Cadastro</title>
</head>
<body>
    <form action="" method="post" class"container">
        <label for="nome">Nome do Produto</label>
            <input type="text" name="nome" id="nome" class="form-control"><br>
        <label for="descricao">Descrição</label>
            <input type="text" name="descricao" id="descricao" class="form-control"><br>
        <label for="preco">Preço </label>
            <input type="number" name="preco" class="form-control"><br>
        <label for="">Imagem</label>
            <input type="file" name="imagem" class="form-control"><br>
        <label for="fk_editora" id="fk_editora">Editora</label>
        <select name="fk_editora" id="fk_editora" class="form-control">
        <?php foreach ($editoras as $editora) :?>
            <option value=""> <?php echo $editora['nome']; ?></option>            
<?php endforeach; ?>
        ?>
        </select>
        <button name="cadastro-livro" class="btn btn-primary">Enviar</button>

    </form>

</body>
</html>