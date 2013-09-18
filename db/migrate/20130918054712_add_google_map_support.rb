class AddGoogleMapSupport < ActiveRecord::Migration
  def up
    add_column :shows, :latitude,  :float
    add_column :shows, :longitude, :float
    add_column :shows, :gmaps, :boolean
  end

  def down
    remove_column :users, :latitude,  :float
    remove_column :users, :longitude, :float
    remove_column :users, :gmaps, :boolean
  end
end

