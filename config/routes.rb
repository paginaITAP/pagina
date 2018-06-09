Rails.application.routes.draw do

  devise_for :users
  devise_for :admins

  mount Ckeditor::Engine => '/ckeditor'


  resources :photos do
    resources :comments
  end
  resources :videos do
    resources :comments
  end
  resources :news do
    resources :comments
  end
  resources :newspapers do
    resources :comments
  end

  resources :pei
  resources :managers
  resources :teachers
  resources :contact_us

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
