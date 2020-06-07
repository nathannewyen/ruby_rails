Rails.application.routes.draw do
  get '' => 'dojo_controllers#index'
  get 'dojos/new' => 'dojo_controllers#new'
  get 'dojos/:id' => 'dojo_controllers#info'
  get 'dojos/:id/edit' => 'dojo_controllers#edit'
  post 'create' => 'dojo_controllers#create'
  patch 'dojos/:id/edit_process' => 'dojo_controllers#update'
  delete 'dojos/:id/delete' => 'dojo_controllers#delete'
end
