class ShouterController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :like, :unlike, :comment, :show, :feed]

	def show
		
	end

	def	feed
		@shouts = Shout.includes(:badge, :likes, :comments, :receiver, :sender, badge: [:badge_category] )
										.order('id DESC')
										.limit(10)
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

	def comments
		@comments = Shout.find(params[:id]).comments.pluck(:comment, :user_id)
	end


	def new_comment
		
	end

	def hustlers
		super
		respond_to do |format|
			format.js {render nothing: true} 
		end
	end

	private

	def permit_params
		params.require(:shout).permit(:email, :sender_id, :receiver_id, :notes, :badge_id)
	end


end