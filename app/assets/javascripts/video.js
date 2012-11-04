$(function(){
	var visible = false;
	var visible_languages = false;
	var visible_editor = false;	
	topics = $("#topics");
	
	$("#download").on("click",function(){

	});
	$('#show_topics').on('click',function(){
		if(visible_languages) {
			$("#languages").hide();
			$('#show_languages').text('Seleccionar lenguaje');
			visible_languages = false;
		}
		var s = $(this);
		if(visible){
			topics.slideUp();
			s.text('Ver temario');
			visible = false;
		}else{
			visible = true;
			s.text('Cerrar temario');
			topics.slideDown();
		}
	});
	$(".pick ").on("click",function(){
			$("#languages").slideUp();
			$('#show_languages').text('Seleccionar lenguaje');
			visible_languages	 = false;
		});
	$('#show_languages').on('click',function(){
		if(visible) {
			topics.hide();
			$('#show_topics').text('Ver temario');
			visible = false;
		}
		var s = $(this);
		if(visible_languages){
			$("#languages").slideUp();
			s.text('Seleccionar lenguaje');
			visible_languages	 = false;
		}else{
			visible_languages = true;
			s.text('Ocultar lenguajes');
			$("#languages").slideDown();
		}
	})
	$("#show_editor").on("click",function(){
		var s = $(this);
		$("#show_languages").hide();
		$("#l_o_d").hide();
		if(visible_editor){
			if(visible_languages) {
				$("#languages").hide();
				$('#show_languages').text('Seleccionar lenguaje');
				visible_languages = false;				
			}
			$("#editor").hide('slow');
			s.text('Abrir editor');
			visible_editor = false;
		}else{
			$("#l_o_d").show();
			$("#show_languages").show();
			visible_editor = true;
			s.text('Cerrar editor');
			$("#editor").show('slow',function(){
				editor.resize();
			});
		}
		

	});
});