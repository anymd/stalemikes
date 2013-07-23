class Show < ActiveRecord::Base

  attr_accessible :name, :venue, :address, :city, :state, :zip, :country, :web_site, :facebook_link, :twitter_name, :phone, :day, :frequency, :show_type, :signup_time, :show_time, :host_name, :price, :notes, :user_id, :status, :metro_area_id, :updated_at, :filepicker_url

  belongs_to :user
  has_one :metro_area

  enumerate :show_type
  enumerate :state
  enumerate :frequency
  enumerate :day

end