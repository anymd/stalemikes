class CreateMetroAreas < ActiveRecord::Migration
  def change
    create_table :metro_areas do |t|
      t.string :name	
      t.timestamps
    end
  end
end
