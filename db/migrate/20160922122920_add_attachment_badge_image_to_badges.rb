class AddAttachmentBadgeImageToBadges < ActiveRecord::Migration
  def self.up
    change_table :badges do |t|
      t.attachment :badge_image
    end
  end

  def self.down
    remove_attachment :badges, :badge_image
  end
end
