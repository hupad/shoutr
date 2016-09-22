class Badge < ActiveRecord::Base
	belongs_to :shout
	has_one :badge_category
	
	has_attached_file :badge_image, styles: {small: "100x100", medium: "200x200", large: "1140x296"}
	validates_attachment_content_type :badge_image,
									 :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
