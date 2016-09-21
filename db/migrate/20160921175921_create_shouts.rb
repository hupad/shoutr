class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :badge_id

      t.timestamps null: false
    end
  end
end
