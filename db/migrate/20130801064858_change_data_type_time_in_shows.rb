class ChangeDataTypeTimeInShows < ActiveRecord::Migration
  def up
    remove_column :shows, :signup_time
    remove_column :shows, :show_time
    add_column :shows, :signup_time, :datetime
    add_column :shows, :start_time, :datetime
    add_column :shows, :end_time, :datetime
    add_column :shows, :charge, :string
  end

  def down
    remove_column :shows, :signup_time
    remove_column :shows, :start_time
    remove_column :shows, :end_time
    remove_column :shows, :charge
    add_column :shows, :signup_time, :string
    add_column :shows, :show_time, :string
  end
end
