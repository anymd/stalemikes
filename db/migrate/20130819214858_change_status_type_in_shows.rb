class ChangeStatusTypeInShows < ActiveRecord::Migration
  def up
    remove_column :shows, :status
    add_column :shows, :status, :integer
  end

  def down
    remove_column :shows, :status
    add_column :shows, :status, :string
  end
end
