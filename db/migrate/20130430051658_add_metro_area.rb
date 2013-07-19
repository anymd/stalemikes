class AddMetroArea < ActiveRecord::Migration
  def up
  	add_column :shows, :metro_area, :string
  end

  def down
  	remove_column :shows, :metro_area
  end
end
