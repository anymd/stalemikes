class AddAreaToShow < ActiveRecord::Migration
  def change
    add_column :shows, :area, :string
  end
end
