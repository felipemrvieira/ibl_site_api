Rails.application.routes.draw do
  resources :pre_registrations
  resources :unity_types
  resources :social_networks
  resources :sn_types
  resources :courses
  resources :phones
  resources :addresses
  resources :unities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
