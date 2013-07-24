class MetroArea < ActiveRecord::Base
  attr_accessible :name, :metro_area

  belongs_to :shows
  
end
