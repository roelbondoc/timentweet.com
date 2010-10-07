

$(function(){
		
/* --------------- AJAXFORM ------------------------ */

$('#ajaxform').ajaxForm({
target: '#log',
success: function(responseText) 
{
	var x = $('div.success').text().length;
	if(x>0) $('#ajaxform').slideUp('slow');	
}
});


});

