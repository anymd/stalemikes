class Fix < ActiveRecord::Migration
  def up
    add_column :shows, :status, :string
    remove_column :users, :status
  end

  def down
    add_column :users, :status, :string
    remove_column :shows, :status, :string
  end
end

