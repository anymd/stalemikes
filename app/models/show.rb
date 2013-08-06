  class Show < ActiveRecord::Base

  attr_accessible :name, :venue, :address, :city, :state, :zip, :country, :web_site, :facebook_link, :twitter_name, :phone, :day, :frequency, :show_type, :signup_time, :start_time, :end_time, :host_name, :price, :notes, :user_id, :status, :metro_area_id, :updated_at, :charge, :filepicker_url

  belongs_to :user
  belongs_to :metro_area

  validates :name, :venue, :address, :city, :state, :zip, :country, :day, :frequency, :show_type, :start_time, :metro_area_id, :presence => true

  enumerate :show_type
  enumerate :state
  enumerate :frequency
  enumerate :day

end