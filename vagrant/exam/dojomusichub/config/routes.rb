Rails.application.routes.draw do
  # User
  get 'users' => 'users#index'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'

  # Session
  get 'sessions/logout'
  post 'sessions/login'

  # Song
  get 'songs' => 'songs#index'
  post 'songs' => 'songs#create'
  get 'songs/:id' => 'songs#show'
  
  post 'lists/add'

  root 'users#index'

end
