Rails.application.routes.draw do
  devise_for :users
  get 'product', to: 'products#product'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
