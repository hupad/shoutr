class ShouterController < ApplicationController

	def	feed

	end

	def new
		
	end

	def create
		
	end

	private

	def permit_params
		params.require(:shout).permit(:sender_id, :receiver_id, :reason, :badge_id)
	end
end