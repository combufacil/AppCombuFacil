jQuery( document ).ready(function() {
	// Handler for .ready() called.

	jQuery( "#btnCadastrarusuario" ).click(function() {

		//jQuery.support.cors = true;
		var nome= jQuery('#nome').val();
		var nascimento = jQuery('#nacimento').val();
		var cpf = jQuery('#cpf').val();
		var endereco = jQuery('#endereco').val();
		var num = jQuery('#num').val();
		var cep = jQuery('#cep').val();
		var bairro = jQuery('#bairro').val();
		var cidade = jQuery('#cidade').val();
		var uf = jQuery('#uf').val();
		var email = jQuery('#email').val();
		var senha = jQuery('#senha').val();
		var confirmar_senha = jQuery('#confirmar_senha').val();

		jQuery.ajax({
			type : "GET",
			data :
			"nome="+nome+
			"&nascimento="+nascimento+
			"&cpf="+cpf+
			"&endereco="+endereco+
			"&num="+num+
			"&cep="+cep+
			"&bairro="+bairro+
			"&cidade="+cidade+
			"&uf="+uf+
			"&email="+email+
			"&senha="+senha+
			"&confirmar_senha="+confirmar_senha,
			url : "./js/cadastro-usuario.php",
			success : function(resposta){
				alert("Cadastro efetuado");
			},
			error : function(xhr, ajaxOptions, thrownError){
				alert(xhr.status);
				alert(thrownError);
			}
		});
	});
});