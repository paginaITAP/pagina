Rails.application.routes.draw do

  get 'managers/index'

  resources :pei

  devise_for :admins
  devise_for :users

  resources :photos
  resources :videos

  resources :teachers
  resources :managers

  resources :news
  resources :newspapers
  resources :human_talent
  resources :institutional_horizon
  resources :contact_us

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
