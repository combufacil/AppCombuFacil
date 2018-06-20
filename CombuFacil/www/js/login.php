<?php
	//  =========================
	$servername = "localhost";
	$username = "root";
	$password = "";
	//$banco = "combufacil";
	//  =========================

	$login=$_POST['login'];	//Pegando dados passados por AJAX
	$senha=$_POST['senha'];

	$conn = new mysqli($servername, $username, $password);  

	//Consulta no banco de dados
	$sql="select * from combufacil.cliente where email='".$login."' and senha='".md5($senha)."'"; 
	//echo $sql;
	$resultados = mysqli_query($conn, $sql)or die (mysqli_error());
	$res=mysqli_fetch_array($resultados); //
	if (@mysqli_num_rows($resultados) == 0){
		echo 0;	//Se a consulta não retornar nada é porque as credenciais estão erradas
	}

	else{
		echo 1;	//Responde sucesso
		if(!isset($_SESSION)) 	//verifica se há sessão aberta
			session_start();		//Inicia seção
			//Abrindo seções
			$_SESSION['usuarioID']=$res['id']; 		
			$_SESSION['nomeUsuario']=$res['nome'];
			$_SESSION['email']=$res['email'];	
		exit;	
	}
?>