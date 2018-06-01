<?php
header('Access-Control-Allow-Origin: *');

//  =========================
$servername = "localhost";
$username = "root";
$password = "";
//$banco = "combufacil";
//  =========================

$razao_social = utf8_decode($_GET['razao_social']);
$nome_fantasia = utf8_decode($_GET['nome_fantasia']);
$cnpj = utf8_decode($_GET['cnpj']);
$endereco = utf8_decode($_GET['endereco']);
$num = utf8_decode($_GET['num']);
$cep = utf8_decode($_GET['cep']);
$bairro = utf8_decode($_GET['bairro']);
$cidade = utf8_decode($_GET['cidade']);
$uf = utf8_decode($_GET['uf']);
$telefone = utf8_decode($_GET['telefone']);
$celular = utf8_decode($_GET['celular']);
$email = utf8_decode($_GET['email']);
$senha = md5(utf8_decode($_GET['senha']));
$confirma_senha = utf8_decode($_GET['confirma_senha']);

$conn = new mysqli($servername, $username, $password);
//  =========================
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO combufacil.posto (razao_social, nome_fantasia, cnpj, endereco, num, cep, bairro, cidade, uf, telefone, celular, email, senha, confirma_senha) VALUES ('$razao_social', '$nome_fantasia', '$cnpj', '$endereco', '$num', '$cep', '$bairro', '$cidade', '$uf', '$telefone', '$celular', '$email', '$senha', '$confirma_senha')";

if ($conn->query($sql) === TRUE) {
    echo "Cadastro efetuado com sucesso! ";
	$conn->close();
} else {
	echo 'Erro ao cadastrar: <br>';
    echo "Error: " . $sql . "<br>" . $conn->error;
} 
$conn->close();
    #Se o retorno for maior do que zero, diz que já existe um.
   
//  =========================
?>