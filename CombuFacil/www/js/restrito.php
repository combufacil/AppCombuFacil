<?php
session_start(); 	//A seção deve ser iniciada em todas as páginas
echo('123');
if (!isset($_SESSION['usuarioID'])) {		//Verifica se há seções
       // session_destroy();						//Destroi a seção por segurança
       	header("Location: pagina_inicial.html"); exit;	//Redireciona o visitante para login
}
?>