Rails.application.routes.draw do
  jsonapi_resources :broadcasts
  jsonapi_resources :subscriptions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
