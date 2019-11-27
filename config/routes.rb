Rails.application.routes.draw do
  devise_for :users
  resources :users, :path => '/', only: [:show, :edit, :update] do
     resource :cart,:path => 'mon_panier', except: [:index]
     resources :orders, only: [:show, :new, :create, :index]
  end
  resources :items do
    resources :join_table_carts_items, only: [:create, :destroy]
    resources :panini_images, only: [:create, :edit, :update]
  end
  root to: 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
