Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users 
  resources :users, only: [:show] do
     resource :cart, except: [:index]
     resources :orders, only: [:show, :new, :create, :index]
  end
  resources :join_table_carts_items, only: [:create, :destroy]
  resources :items, only: [:show, :index]
  root to: 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
