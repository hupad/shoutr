class Shout < ActiveRecord::Base

	attr_accessor :email, :badge_id

	belongs_to :sender, class_name: "User", foreign_key: :sender_id
	belongs_to :receiver, class_name: "User", foreign_key: :receiver_id
	
	belongs_to :badge
	has_many :likes
	has_many :comments



	# def liked(shout)
 #    	sql = "select likes.user_id, likes.shout_id from shouts, likes where shouts.id = likes.shout_id and likes.user_id = ?"
    	
 #  	end
end