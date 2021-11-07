Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # resources :home
   get 'sign_up', to: 'home#new'
    post 'sign_up', to: 'home#create'


  get 'edit_home', to: 'home#edit'
  post 'edit_home', to: 'home#update'
  resources :home
  resources :surveys


end
