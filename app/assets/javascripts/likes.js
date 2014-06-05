$(document).ready(function(){
	$('.like-btn').on('click', function(event){
		event.preventDefault();
		$.post(this.href);
	});

	var connection = new WebSocketRails(window.location.host + '/websocket')
	channel = connection.subscribe('likes');
	channel.bind('new', function(post) {
		var postElem = $('.post[data-id=' + post.id + '] .like-btn')
  	postElem.text('❤ ' + post.new_like_count);
  	console.log('hello');
	});

});