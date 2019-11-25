Rails.application.routes.draw do
  devise_for :users 
  resources :users, only: [] do
   	resource :cart, except: [:index]
  end
  root to: 'items#index'
  resources :items, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
