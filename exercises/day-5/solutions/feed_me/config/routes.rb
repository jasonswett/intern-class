Rails.application.routes.draw do
  resources :menu_items
  resources :restaurants

  root 'restaurants#index'
end
