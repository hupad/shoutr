class ProfileController < ApplicationController
	
	def	index
		@user = User.includes(
					:received_shouts, 
					:sent_shouts,
					received_shouts: [:receiver, :sender, :sender, :badge, badge: [:badge_category]], 
					sent_shouts: [:badge, badge: [:badge_category]]
				).find(params[:user_id])
	end

end