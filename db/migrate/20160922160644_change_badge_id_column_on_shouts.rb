class ChangeBadgeIdColumnOnShouts < ActiveRecord::Migration
  def change
  	remove_column :shouts, :badge_id
  end
end
