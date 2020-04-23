Rails.application.routes.draw do
  resources :list_trips
  resources :trips
  resources :activities
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
