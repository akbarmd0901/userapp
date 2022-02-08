Rails.application.routes.draw do
    root "products#index"
    resources :products do
    resources :comments, only: [:create, :destroy]
  end
    resources :users, only: [:new, :create]
      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      get 'welcome', to: 'sessions#welcome' 
      get 'authorized', to: 'sessions#page_requires_login'
      delete '/logout' => 'sessions#destroy'   
end
