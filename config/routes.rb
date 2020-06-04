Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:index]
  post 'products/import', to: 'products#import'
  get 'products/get_product_data_api', to: 'products#get_product_data_api'
  root 'products#index'
end
