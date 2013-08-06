class MetroArea < ActiveRecord::Base
  attr_accessible :name, :metro_area_id

  has_many :shows
  
end
