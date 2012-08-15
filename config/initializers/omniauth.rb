#OmniAuth.config.full_host = "http://localhost:3000"
Rails.application.config.middleware.use OmniAuth::Builder do
  client_id = '986500766653.apps.googleusercontent.com'
  secret_key = 'lxrUbbixbPpXiDeE4jbbV-4k'
  provider :google_oauth2, client_id, secret_key, { :scope => 'https://www.googleapis.com/auth/userinfo.profile' ,access_type: 'online', approval_prompt: 'force'}
end
