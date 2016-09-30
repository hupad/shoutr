$(document).ready(function(){

	$('.badge-category-name').click(function(){

		$('#badgeType').removeAttr('class');
		$('#largeBadgeCategory').removeAttr('class');

		var badgeClass = $(this).attr('class').split(" ")[2];
		var cateogry = badgeClass.split("-")[0];

		$('#badgeType').addClass("icon " + badgeClass);
		$('#largeBadgeCategory').addClass("large-badge large-badge-category " + cateogry);

		$('.badge-name').text( $(this).attr('data-badge-name') );
		$('#badgeCategory').text( $(this).attr('data-badge-category-name') );

		localStorage.setItem( 'badgeId', $(this).attr('data-badge-id') );
	});

	$("#btnShout").click(function(){
			
			var that = this;

			that.badgeId = localStorage.getItem("badgeId");
			that.employeeEmail = $("#employeeEmail").val().trim();
			that.reason = $("#reason").val().trim();

			$.ajax({
				type: "post",
				url: "/shout",
				data: {shout: { email: that.employeeEmail, notes: that.reason, badge_id: that.badgeId }}
			}).done(function(msg){
				
				window.location.replace("/");

			}).fail(function(msg){
				console.log(msg);
			});

	});
});