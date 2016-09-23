class AddShortNameToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :short_name, :string
  end
end
