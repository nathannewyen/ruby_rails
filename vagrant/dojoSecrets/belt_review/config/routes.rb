Rails.application.routes.draw do
  get 'sessions/new'

  #user routes
  get 'users' => 'users#index'
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  get 'users/:id' => 'users#show'
  patch 'users/:id/update' => 'users#update'

  # sessions

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

  # attendances
  get 'events/:id/join' => 'attendances#join'
  delete 'attendances/:id/delete' => 'attendances#destroy'

  # comment
  post 'comments/:event_id' => 'comments#create'
  
end
