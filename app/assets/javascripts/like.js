$('#like-shout-button').bind('ajax.success', function(){
	alert("Success");
});

$('#like-shout-button').bind('ajax.error', function(){
	alert("Error!");
});