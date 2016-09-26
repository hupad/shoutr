class AddUniqueConstraintOnShouts < ActiveRecord::Migration
  def change
  	add_index :likes, ["shout_id", "user_id"], unique: true
  end
end
