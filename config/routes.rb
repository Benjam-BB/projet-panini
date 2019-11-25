Rails.application.routes.draw do

  devise_for :users 
  resources :users, only: [] do
     resource :cart, except: [:index]
     resource :orders, only: [:show, :new, :create]
  end
  resources :items, only: [:show, :index]
  root to: 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
