Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET'],
           secure_image_url: 'true',
           image_size: 'original',
           x_auth_access_type: 'read'
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end

OmniAuth.config.logger = Rails.logger
