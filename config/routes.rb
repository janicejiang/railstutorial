Rails.application.routes.draw do
  root 'static_pages#home'

  resources :users
  resources :account_activations, only: [:edit]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get '/help', to: 'static_pages#help'
  get 'static_pages/about' # 会自动创建一个辅助方法 static_pages_about_url
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
