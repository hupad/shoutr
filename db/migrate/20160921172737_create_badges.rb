class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :badge_url
      t.integer :points

      t.timestamps null: false
    end
  end
end
