Rails.application.config.middleware.use OmniAuth::Builder do
  require 'openid/store/filesystem' 
  provider :open_id, :name => 'google', :identifier => 'google.com/accounts/o8/id'
end