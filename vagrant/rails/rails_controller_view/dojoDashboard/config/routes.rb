Rails.application.routes.draw do
  # get 'dojos' => 'dojos#index'
  # get 'dojos/new' => 'dojos#new'
  # get 'dojos/:id' => 'dojos#show'
  # get 'dojos/:id/edit' => 'dojos#edit'
  # post 'dojos' => 'dojos#create'
  # patch 'dojos/:id/update' => 'dojos#update'
  # delete 'dojos/:id' => 'dojos#destroy'

  # get'dojos/:dojo_id/students/new' => 'students#new'
  # post 'dojos/:id/students/new/process' => 'dojos#add_student_process'
  # get 'dojos/:dojo_id/students/:id' => 'dojos#show'
  # get 'dojos/:id/students/:student_id/edit' => 'dojos#student_edit'
  # patch 'dojos/:id/students/:student_id/edit/process' => 'dojos#student_update'
  # delete 'dojos/:id/students/:student_id/delete' => 'dojos#delete_student'

  
resources :dojos do
  resources :students
end

end
