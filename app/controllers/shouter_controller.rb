class ShouterController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :like, :comment, :show, :feed]

	def show
		
	end

	def	feed
		@shouts = Shout.includes(:likes, :comments)
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
		
	end

	def comment
		
	end

	private

	def permit_params
		params.require(:shout).permit(:email, :sender_id, :receiver_id, :notes, :badge_id)
	end
end