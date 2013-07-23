class ChangeDataTypesToIntegers < ActiveRecord::Migration
  def up
    remove_column :shows, :day
    remove_column :shows, :frequency
    add_column :shows, :day, :integer
    add_column :shows, :frequency, :integer
  end

  def down
    remove_column :shows, :day
    remove_column :shows, :frequency
    add_column :shows, :day, :string
    add_column :shows, :frequency, :string
  end
end
