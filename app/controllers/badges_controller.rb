class BadgesController < ApplicationController
	
	def	index

	end

	def new
		@badge = Badge.new
	end

	def create
		
	end

	private

	def permit_params
		params.require(:badge).permit(:image_url, :badge_category_id, :name, :badge_image)
	end

end