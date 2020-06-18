Rails.application.routes.draw do
  get 'sessions/new'

  #user routes
  get 'users' => 'users#index'
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'

    # ------------sessions-------------

  get 'sessions/new' => 'sessions#new', as: 'login'

  post 'sessions' => 'sessions#create'

  delete 'sessions/:id' => 'sessions#destroy', as: 'logout'

  
  #event routes
  get 'events' => 'events#index'
  get 'events/:id' => 'events#show'
  post 'events' => 'events#create'
  get 'events/:id/edit' => 'events#edit'
  patch 'events/:id' => 'events#update'
  delete 'events/:id' => 'events#destroy'
end
