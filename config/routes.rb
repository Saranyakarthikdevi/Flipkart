Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root 'bazaar#index', as: 'bazaar_index'
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
