$(document).ready(function(){
	$('.like-btn').on('click', function(event){
		event.preventDefault();
		$.post(this.href);
	})

	var connection = new WebSocketRails('localhost:3000/websocket')
})