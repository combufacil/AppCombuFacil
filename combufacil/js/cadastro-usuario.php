<?php
header('Access-Control-Allow-Origin: *');

//  =========================
$servername = "localhost";
$username = "root";
$password = "";
//$banco = "combufacil";
//  =========================

$nome = utf8_decode($_GET['nome']);
$nascimento = utf8_decode($_GET['nascimento']);
$cpf = utf8_decode($_GET['cpf']);
$endereco = utf8_decode($_GET['endereco']);
$num = utf8_decode($_GET['num']);
$cep = utf8_decode($_GET['cep']);
$bairro = utf8_decode($_GET['bairro']);
$cidade = utf8_decode($_GET['cidade']);
$uf = utf8_decode($_GET['uf']);
$email = utf8_decode($_GET['email']);
$senha = md5(utf8_decode($_GET['senha']));
$confirmar_senha = utf8_decode($_GET['confirmar_senha']);

$conn = new mysqli($servername, $username, $password);
//  =========================
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO combufacil.cliente (nome, nascimento, cpf, endereco, num, cep, bairro, cidade, uf, email, senha, confirmar_senha) VALUES ('$nome', '$nascimento', '$cpf', '$endereco', '$num', '$cep', '$bairro', '$cidade', '$uf','$email', '$senha', '$confirmar_senha')";

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