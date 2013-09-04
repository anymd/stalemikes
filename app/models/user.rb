class User < ActiveRecord::Base
  attr_accessible :name, :oauth_expires_at, :oauth_token, :provider, :uid, :user_id

  has_many :shows
  has_many :verifications

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  	  user.provider = auth.provider
  	  user.uid = auth.uid
  	  user.name = auth.info.name
  	  user.oauth_token = auth.credentials.oauth_token
  	  user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  	  user.name = 'Stale Mikes' if user.is_admin
      user.save!
    end	  
  end

  def admin?
    self.is_admin
  end
end
