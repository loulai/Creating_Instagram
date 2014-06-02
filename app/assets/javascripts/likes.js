$(document).ready(function(){
	$('.like-btn').on('click', function(event){
		event.preventDefault();
		$.post(this.href);
	})

	var connection = new WebSocketRails('localhost:3000/websocket')
	channel = connection.subscribe('likes');
	channel.bind('new', function(resp) {
		console.log('hi')
  	$('.like-btn').text('❤ ' + resp.new_like_count);
	});

})