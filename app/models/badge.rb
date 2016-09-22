class Badge < ActiveRecord::Base
	#belongs_to :shout
	has_one :badge_category
	
	has_attached_file :badge_image, styles: {small: "70x70"}
	validates_attachment_content_type :badge_image,
									 :content_type => ["image/jpg", "image/jpeg", "image/png"]
end