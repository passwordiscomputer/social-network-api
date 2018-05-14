Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :posts
  root "application#index"
end
