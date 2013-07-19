OmniAuth.config.logger = Rails.logger

  Rails.application.config.middleware.use OmniAuth::Builder do
  	provider :facebook, '562643400448129', '3ccd967a6b39f4b5141eececa362875a'
  end
	



