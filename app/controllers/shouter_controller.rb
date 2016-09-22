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
		@shout = Shout.new(
			sender_id: current_user.id,
			receiver_id: permit_params[:receiver_id],
			notes: permit_params[:notes],
			badge_id: permit_params[:badge_id]
		)

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
		params.require(:shout).permit(:sender_id, :receiver_id, :notes, :badge_id)
	end
end