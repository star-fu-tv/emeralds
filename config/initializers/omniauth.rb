OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '611852522223980', '3695f567f44d9257c759c4acc2f2407a'
end
