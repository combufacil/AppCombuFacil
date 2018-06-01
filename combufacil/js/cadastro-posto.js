jQuery( document ).ready(function() {
	// Handler for .ready() called.

	jQuery( "#btnCadastrarposto" ).click(function() {

		//jQuery.support.cors = true;
		var razao_social= jQuery('#razao_social').val();
		var nome_fantasia = jQuery('#nome_fantasia').val();
		var cnpj = jQuery('#cnpj').val();
		var endereco = jQuery('#endereco').val();
		var num = jQuery('#num').val();
		var cep = jQuery('#cep').val();
		var bairro = jQuery('#bairro').val();
		var cidade = jQuery('#cidade').val();
		var uf = jQuery('#uf').val();
		var telefone = jQuery('#telefone').val();
		var celular = jQuery('#celular').val();
		var email = jQuery('#email').val();
		var senha = jQuery('#senha').val();
		var confirma_senha = jQuery('#confirma_senha').val();

		jQuery.ajax({
			type : "GET",
			data :
			"razao_social="+razao_social+
			"&nome_fantasia="+nome_fantasia+
			"&cnpj="+cnpj+
			"&endereco="+endereco+
			"&num="+num+
			"&cep="+cep+
			"&bairro="+bairro+
			"&cidade="+cidade+
			"&uf="+uf+
			"&telefone="+telefone+
			"&celular="+celular+
			"&email="+email+
			"&senha="+senha+
			"&confirma_senha="+confirma_senha,
			url : "./js/cadastro-posto.php",
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