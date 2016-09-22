$(document).ready(function(){
	$.ajax({
		type: 'GET',
		url: "/hustlers",
		success: function(data) {
			console.log(data);
		},
		error: function(data) {
			console.log(data);
		}
	})
});