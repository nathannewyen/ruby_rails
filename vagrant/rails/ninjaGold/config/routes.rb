Rails.application.routes.draw do
  get '' => 'ninjas#index'
  post 'farm' => 'ninjas#farm'
  post 'cave' => 'ninjas#cave'
  post 'house' => 'ninjas#house'
  post 'casino' => 'ninjas#casino'
  root 'ninjas#init'
end
