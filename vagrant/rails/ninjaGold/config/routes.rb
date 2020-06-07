Rails.application.routes.draw do
  root 'ninjas#index'
  post 'earngold' => 'ninjas#earngold'
end
