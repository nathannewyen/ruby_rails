Rails.application.routes.draw do
  get '' => 'dojo_controllers#index'
  get 'dojos/new' => 'dojo_controllers#new'
  post 'create' => 'dojo_controllers#create'
end
