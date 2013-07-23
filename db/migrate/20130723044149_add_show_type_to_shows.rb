class AddShowTypeToShows < ActiveRecord::Migration
  def up
    remove_column :shows, :show_type
    add_column :shows, :show_type, :integer
  end
  def down
    remove_column :shows, :show_type
    add_column :shows, :show_type, :string
  end
end
