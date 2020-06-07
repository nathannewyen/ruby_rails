Rails.application.routes.draw do
  get '' => 'dojo_controllers#index'
  get 'dojos/new' => 'dojo_controllers#new'
  get 'dojos/:id' => 'dojo_controllers#info'
  post 'create' => 'dojo_controllers#create'
end
