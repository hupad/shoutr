class Shout < ActiveRecord::Base

	attr_accessor :email, :badge_id

	belongs_to :sender, class_name: "User", foreign_key: :sender_id
	belongs_to :receiver, class_name: "User", foreign_key: :receiver_id
	
	belongs_to :badge
end