Rails.application.routes.draw do
 
  
  get "trips/show1",  as: :show_images
  
  get 'myreservation/index'
 resources :trips 
 
 get 'reservations/delete'
 delete "reservations/show", to:"reservations#destroy", as: :delete_res

  post 'trips/show' , to:"reservations#create", as: :save_trip
  get 'reservations/show'
  get 'myreservations/showall', to:"myreservation#showall", as: :show_all_reservation
  get 'admin_page/show', to:"admin_page#showuser"
  get 'admin_page/index'
  get 'profiles/edit'
  patch "profiles/edit", to:"profiles#update"
 resources :users
 

  get 'passwords/edit'
 get "passwords", to:"passwords#edit", as: :edit_password
 patch "passwords", to:"passwords#update"
 
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "logout", to: "sessions#destroy", as: :logout_user
  
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  
  
  
 
  
  get "about", to: "about#index"
  root to: "homepage#index"
  
  
end
