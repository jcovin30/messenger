Rails.application.routes.draw do

  get 'messages/index'
  get 'messages/create'
  get 'messages/show'
  get "/404" => "errors#not_found"
  resources :messages, only:[:index ,:create ,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
