Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "users#index"
  # resources :users
   get 'sign_up', to: 'users#new'
    post 'sign_up', to: 'users#create'


  get 'edit_user', to: 'users#edit'
  post 'edit_user', to: 'users#update'
  resources :home
  resources :surveys
  resources :users

end
