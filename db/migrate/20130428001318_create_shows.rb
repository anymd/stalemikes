class CreateShows < ActiveRecord::Migration
  def change

  	create_table :shows do |t|
      t.references :user
      t.string :name, :web_site, :facebook_link, :twitter_name
      t.string :venue, :address, :city, :state, :country, :phone
      t.integer :zip
      t.string :day, :frequency, :show_type
      t.string :signup_time, :show_time, :host_name, :price
      t.text :notes
      t.timestamps
  	end	

  end	
end
