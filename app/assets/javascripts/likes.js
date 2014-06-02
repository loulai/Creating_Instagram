$(document).ready(function(){
	$('.like-btn').on('click', function(event){
		event.stopPropogation;
		event.preventDefault();
		$post(this.href);
	})
})