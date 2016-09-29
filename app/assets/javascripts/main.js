$(document).ready(function(){

	$('.badge-category-name').click(function(){
		
		$('#badgeType').removeAttr('class');
		$('#largeBadgeCategory').removeAttr('class');

		var badgeClass = $(this).attr('class').split(" ")[2];
		var cateogry = badgeClass.split("-")[0];

		$('#badgeType').addClass("icon " + badgeClass);
		$('#largeBadgeCategory').addClass("large-badge large-badge-category " + cateogry);
	});

});