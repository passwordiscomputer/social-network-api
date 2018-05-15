Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :posts
  resources :users do
    resources :profiles
    resources :follows
  end

end
