class AddBadgeToShouts < ActiveRecord::Migration
  def change
    add_reference :shouts, :badge, index: true, foreign_key: true
  end
end
