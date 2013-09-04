class CreateVerifyTable < ActiveRecord::Migration
  def change

    create_table :verifications do |t|
      t.references :user
      t.references :show
      t.text :note
      t.timestamps
    end 

  end 
end
