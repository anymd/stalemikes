class ChangeColumnType < ActiveRecord::Migration
  def up
  	remove_column :shows, :metro_area_id
  	add_column :shows, :metro_area_id, :integer
  end

  def down
  	remove_column :shows, :metro_area_id
  	add_column :shows, :metro_area_id, :string
  end
end
