Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :posts, only: [:create, :show]
  resources :users do
    resources :profiles
    resources :follows
    resources :posts, except: [:create, :show]
  end

end
