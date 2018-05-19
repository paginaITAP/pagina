Rails.application.routes.draw do

  resources :comments
  devise_for :users
  devise_for :admins

  mount Ckeditor::Engine => '/ckeditor'

  resources :pei

  resources :photos
  resources :videos

  resources :managers

  resources :news
  resources :newspapers
  resources :teachers
  resources :contact_us

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
