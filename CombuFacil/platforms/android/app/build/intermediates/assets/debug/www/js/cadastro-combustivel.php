<?php
header('Access-Control-Allow-Origin: *');

//  =========================
$servername = "localhost";
$username = "root";
$password = "";
//$banco = "combufacil";
//  =========================

$gasolina = utf8_decode($_GET['gasolina']);
$alcool = utf8_decode($_GET['alcool']);
$diesel = utf8_decode($_GET['cpf']);
$gasolina_aditivada = utf8_decode($_GET['gasolina_aditivada']);
$gnv = utf8_decode($_GET['gnv']);

$conn = new mysqli($servername, $username, $password);
//  =========================
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO combufacil.combustivel (gasolina, alcool, diesel, gasolina_aditivada, gnv) VALUES ('$gasolina', '$alcool', '$diesel', '$gasolina_aditivada', '$gnv')";

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