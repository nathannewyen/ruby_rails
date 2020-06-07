Rails.application.routes.draw do
  get "" => "survey#index"
  post "create" => "survey#create"
  get "result" => "survey#result"
end
