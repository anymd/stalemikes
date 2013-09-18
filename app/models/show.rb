class Show < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper
  before_save :remove_html

  attr_accessible :name, :venue, :address, :city, :state, :zip, :country, :web_site, :facebook_link, :twitter_name, :phone, :day, :frequency, :show_type, :signup_time, :start_time, :end_time, :host_name, :price, :notes, :user_id, :status, :metro_area_id, :updated_at, :charge, :filepicker_url, :verified_at, :status, :start_date, :area

  scope :sunday, -> { where(:day => '1') }
  scope :monday, -> { where(:day => '2') }
  scope :tuesday, -> { where(:day => '3') }
  scope :wednesday, -> { where(:day => '4') }
  scope :thursday, -> { where(:day => '5') }
  scope :friday, -> { where(:day => '6') }
  scope :saturday, -> { where(:day => '7') }

  has_many :verifications

  belongs_to :user
  belongs_to :metro_area

  enumerate :show_type
  enumerate :state
  enumerate :frequency
  enumerate :day
  enumerate :status

  validates :name, :venue, :address, :city, :state, :zip, :country, :day, :frequency, :show_type, :start_time, :metro_area_id, :verified_at, :status, :metro_area, :presence => true  

  acts_as_gmappable

  def include_end_time
  end

  def gmaps4rails_address
    "#{self.address}, #{self.city}, #{self.state}, #{self.zip}, #{self.country}"
  end

  def fresh?
    self.verified_at > Time.now - 4.weeks
  end

  protected

  def remove_html
    self.attributes.each do |key,value|
      self[key] = strip_tags(value) if value.class == String
    end
  end

end
# comment


