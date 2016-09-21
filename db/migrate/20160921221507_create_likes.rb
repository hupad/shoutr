class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :shout, index: true, foreign_key: true
      t.integer :count

      t.timestamps null: false
    end
  end
end
