Rails.application.routes.draw do
  get 'students/index'

  get '' => 'dojo_controllers#index'
  get 'dojos/new' => 'dojo_controllers#new'
  get 'dojos/:id' => 'dojo_controllers#info'
  get 'dojos/:id/edit' => 'dojo_controllers#edit'
  post 'create' => 'dojo_controllers#create'
  patch 'dojos/:id/edit_process' => 'dojo_controllers#update'
  delete 'dojos/:id/delete' => 'dojo_controllers#delete'

  get'dojos/:id/students/new' => 'dojo_controllers#add_student'
  post 'dojos/:id/students/new/process' => 'dojo_controllers#add_student_process'
  get 'dojos/:id/students/:student_id' => 'dojo_controllers#student_info'
  get 'dojos/:id/students/:student_id/edit' => 'dojo_controllers#student_edit'
  patch 'dojos/:id/students/:student_id/edit/process' => 'dojo_controllers#student_update'
  delete 'dojos/:id/students/:student_id/delete' => 'dojo_controllers#delete_student'

  
end
