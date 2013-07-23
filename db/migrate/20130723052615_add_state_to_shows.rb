class AddStateToShows < ActiveRecord::Migration
  def up
    remove_column :shows, :state
    add_column :shows, :state, :integer
  end
  def down
    remove_column :shows, :state
    add_column :shows, :state, :string
  end
end
