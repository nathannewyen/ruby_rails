Rails.application.routes.draw do
  # -------------root--------------
  
  root 'sessions#new'

  # ------------likes-------------
  
  post 'likes/:id' => 'likes#create'

  delete 'likes/:id' => 'likes#destroy'

  # ------------secrets-------------

  get 'secrets' => 'secrets#index'

  post 'secrets/new' =>  'secrets#create'

  delete 'secrets/:id' => 'secrets#destroy'

  # -----------users--------------

  resources :users

  # ------------sessions-------------

  get 'sessions/new' => 'sessions#new', as: 'login'

  post 'sessions' => 'sessions#create'

  delete 'sessions/:id' => 'sessions#destroy', as: 'logout'
end
