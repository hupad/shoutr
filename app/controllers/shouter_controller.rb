class ShouterController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :like, :unlike, :show, :feed]

	def show
		
	end

	def	feed
		@shouts = Shout.includes(:badge, :likes, :receiver, :sender, badge: [:badge_category] )
										.order('id DESC')
										.limit(10)

		get_likes_for_shout

		get_comments_for_shout

		@liked_shout_map = current_user.liked_shouts

	end

	def new
		@shout = Shout.new
	end

	def create
		receiver = User.find_by(email: permit_params[:email])
		badge = Badge.find(permit_params[:badge_id])

		@shout = Shout.new(
			sender_id: current_user.id,
			receiver_id: receiver.id,
			notes: permit_params[:notes],
		)
		
		@shout.badge = badge
		if @shout.save
			redirect_to root_path, notice: "Your shout has been posted."
		end
	end

	def like
		@shout = Shout.find(params[:id])

		@like = Like.new
		@like.shout = @shout
		@like.user = current_user
		
		@like.save

		respond_to do |format|
			format.js {render nothing: true} 
		end
	end

	def unlike

		shout_id = params[:id]

		@like = Like.find_by(shout_id: shout_id, user_id: current_user.id)

		@like.destroy

		respond_to do |format|
			format.js {render nothing: true}
		end

	end

	private

	def permit_params
		params.require(:shout).permit(:email, :sender_id, :receiver_id, :notes, :badge_id)
	end

	def get_likes_for_shout
		
		@likes_shout_map = Shout.joins(:likes).group("shouts.id").count
		
	end

	def get_comments_for_shout
		
		@comments_shout_map = Shout.joins(:likes).group("shouts.id").count

	end

end