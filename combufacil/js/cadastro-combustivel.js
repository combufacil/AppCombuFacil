jQuery( document ).ready(function() {
	// Handler for .ready() called.

	jQuery( "#btnCadastrarcombustivel" ).click(function() {

		//jQuery.support.cors = true;
		var gasolina = jQuery('#gasolina').val();
		var alcool = jQuery('#alcool').val();
		var diesel = jQuery('#diesel').val();
		var gasolina_aditivada = jQuery('#gasolina_aditivada').val();
		var gnv = jQuery('#gnv').val();
		

		jQuery.ajax({
			type : "GET",
			data :
			"gasolina="+gasolina+
			"&alcool="+alcool+
			"&diesel="+diesel+
			"&gasolina_aditivada="+gasolina_aditivada+
			"&gnv="+gnv,
			url : "./js/cadastro-combustivel.php",
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