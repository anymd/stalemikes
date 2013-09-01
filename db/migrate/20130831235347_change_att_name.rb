class ChangeAttName < ActiveRecord::Migration
  def change
   rename_column :histories, :attributes, :set_attributes
  end

end
