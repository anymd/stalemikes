class User < ActiveRecord::Base
  attr_accessible :name, :oauth_expires_at, :oauth_token, :provider, :uid, :user_id

  has_many :shows
  has_many :verifications

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
  	  user.provider = auth.provider
  	  user.uid = auth.uid
  	  user.name = auth.info.name
  	  user.oauth_token = auth['credentials']['token']

      url = 'https://graph.facebook.com/' + user.uid.to_s + '?fields=id,friends&access_token=' + user.oauth_token.to_s
      get_friends = HTTParty.get("#{url}")
      user.friend_count = get_friends['friends']['data'].count
  	  user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  	  user.name = 'Stale Mikes' if user.is_admin
      user.save!
    end	  
  end

  def admin?
    self.is_admin
  end
end
