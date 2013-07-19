class MetroArea < ActiveRecord::Base
  attr_accessible :name

  belongs_to :shows

end
