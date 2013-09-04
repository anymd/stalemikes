class Verification < ActiveRecord::Base
  attr_accessible :user_id, :show_id, :note

  belongs_to :show
  belongs_to :user

end