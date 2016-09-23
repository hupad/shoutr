class AddShortNameToBadgeCategory < ActiveRecord::Migration
  def change
    add_column :badge_categories, :short_name, :string
  end
end
