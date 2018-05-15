Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :posts, only: [:create]
  resources :users do
    resources :profiles
    resources :follows
    resources :posts, except: [:create]
  end

end
