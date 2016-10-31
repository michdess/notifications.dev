//LISTENERS
Echo.listen('App.User.' + userId, '.task_assigned', function(event) {
          notification_was_received(event);
          add_notification_to_tasklist(event);
          console.log('task received event');
 });


//HELPER FUNCTIONS
function notification_was_received(notification)
{
	increase_notification_counter();
	add_notification_to_list(notification);
}

function increase_notification_counter()
{
	var counter = parseInt($('#notification-count').text());
	
	if(isNaN(counter))
	{
	    $('#notification-count').html(1);
	}else{
	    $('#notification-count').html(counter+1);  
	}
}
function add_notification_to_list(notification)
{
	let list = $('#notification-list');
	let new_item = "<li><a href='/home'> " + notification.body + " </a></li>";
    list.prepend( $(new_item) );
}

function add_notification_to_tasklist(notification)
{
	if($('#task-list').length > 0){
			let list = $('#task-list');
			let new_item = "<li>" + notification.body + "</li>";
		    list.append( $(new_item) );
	}
}
//# sourceMappingURL=notifications.js.map
