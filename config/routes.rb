Rails.application.routes.draw do
  match '/api/v2/auth/*path', to: AuthorizeController.action(:authorize), via: :all
  # Add flexible config for login
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'auth/:provider/callback', to: 'sessions#create'
  mount API::Base, at: '/api'
end
