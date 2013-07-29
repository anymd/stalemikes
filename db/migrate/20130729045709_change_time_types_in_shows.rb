class ChangeTimeTypesInShows < ActiveRecord::Migration
  def up
    remove_column :shows, :signup_time
    remove_column :shows, :show_time
    remove_column :shows, :status
    add_column :shows, :signup_time, :integer
    add_column :shows, :show_time, :integer
    add_column :shows, :status, :integer
  end

  def down
    add_column :shows, :signup_time, :string
    add_column :shows, :show_time, :string
    add_column :shows, :status, :string
    remove_column :shows, :signup_time
    remove_column :shows, :show_time
    remove_column :shows, :status
  end
end
