Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :posts, only: [:create, :show]
  resources :profiles, only: [:update, :index, :show]
  resources :follows
  resources :users do
    resources :posts, except: [:create, :show]
  end

end
