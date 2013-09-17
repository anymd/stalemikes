module UrlHelper

  def url_with_protocol(url)
    /^http/.match(url) ? url : "http://#{url}"
  end

  def twitter_url_with_protocol(twitter_name)
    /^http/.match(twitter_name) ? twitter_name : "http://twitter.com/#{twitter_name}"
  end

end