class ChangeColumnName < ActiveRecord::Migration
  def up
  	rename_column :shows, :metro_area, :metro_area_id
  end

  def down
  	rename_column :table_name, :metro_area_id, :metro_area
  end
end
