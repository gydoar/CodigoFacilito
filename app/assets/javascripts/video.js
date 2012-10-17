$(function(){
	var visible = false;
	topics = $("#topics");
	$('#show_topics').on('click',function(){
		if(visible){
			topics.slideUp();
			visible = false;
		}else{
			visible = true;
			topics.slideDown();
		}
	})
});