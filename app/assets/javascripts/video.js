$(function(){
	var visible = false;
	topics = $("#topics");
	$('#show_topics').on('click',function(){

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
	})
});