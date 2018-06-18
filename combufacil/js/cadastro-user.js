jQuery( document ).ready(function() {
	// Handler for .ready() called.

	jQuery( "#btnCadastrarusuario" ).click(function() {

		//jQuery.support.cors = true;
		var nome= jQuery('#nome').val();
		var cpf = jQuery('#cpf').val();
		var email = jQuery('#email').val();
		var senha = jQuery('#senha').val();
		//var confirmar_senha = jQuery('#confirmar_senha').val();

		jQuery.ajax({
			type : "GET",
			data :
			"nome="+nome+
			"&cpf="+cpf+
			"&email="+email+
			"&senha="+senha,
			
			url : "https://combufacilcombr.000webhostapp.com/cadastro-usuario.php",
			success : function(resposta){
				alert("Cadastro efetuado");
			},
			error : function(xhr, ajaxOptions, thrownError){
				alert(xhr.status);
				alert(thrownError);
			}
		});
		$.mobile.changePage("index.html", {transition: "pop"});
	});
});