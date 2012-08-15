#OmniAuth.config.full_host = "http://localhost:3000"
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '986500766653.apps.googleusercontent.com', ENV['lxrUbbixbPpXiDeE4jbbV-4k'], {access_type: 'online', approval_prompt: ''}
end
