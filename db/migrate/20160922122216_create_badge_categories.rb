class CreateBadgeCategories < ActiveRecord::Migration
  def change
    create_table :badge_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
