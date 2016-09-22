class AddBadgeCategoryToBadges < ActiveRecord::Migration
  def change
    add_reference :badges, :badge_category, index: true, foreign_key: true
  end
end
