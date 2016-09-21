class AddNotesToShout < ActiveRecord::Migration
  def change
    add_column :shouts, :notes, :text
  end
end
