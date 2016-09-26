$(document).ready(function(){

	this.likeShout = function(shoutId){
		
		var that = this;
		that.shoutId = shoutId;
		that.likeButtonId = '#like-shout-button' + shoutId;
		
		var likesCount = parseInt( $('#like'+shoutId).text() );
		var like = $(that.likeButtonId).data("like");

		var options = {
			likeButtonId: $('#like-shout-button' + shoutId),
			likeTextId: $('#like'+shoutId),
			likesCount: likesCount
		};

		if (like) {
			this.like(that.shoutId, options);
		}else{
			this.unlike(that.shoutId, options);
		}
	}


	this.like = function(shoutId, options = {}){

		var that = this;
		that.likeButtonId = options["likeButtonId"];
		that.likeTextId = options["likeTextId"];
		that.likesCount = options["likesCount"];

		$.ajax({
			type: "POST",
			url: '/shout/' + that.shoutId + '/like',
		}).done(function(msg){
				that.likeButtonId.html("Unlike" + "<span class='icon like blue'></span>");
				that.likeTextId.html("<span class='icon like'></span>" +parseInt( that.likesCount + 1 ) );
				that.likeButtonId.attr("data-like", "false");
		}).fail(function(){
			alert("Sorry, you may have already liked this shout.");
		});
	}

	this.unlike = function(shoutId, options = {}){
		
		var that = this;
		that.likeButtonId = options["likeButtonId"];
		that.likeTextId = options["likeTextId"];
		that.likesCount = options["likesCount"];

		$.ajax({
			type: "DELETE",
			url: '/shout/' + that.shoutId + '/like',
		}).done(function(msg){
				that.likeButtonId.text("Like");
				that.likeTextId.text("<span class=icon like></span>" + that.likesCount - 1);
				that.likeButtonId.data("like", true);
		})
	}


});