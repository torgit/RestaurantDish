Rails.application.routes.draw do
  get 'welcome/index'
  concern :restaurant do
    resources :restaurants
  end
  concern :dish do
    resources :dishes
  end
  resources :restaurants, only: [:show, :index] do
    concerns :dish
    resources :dishes
  end
  resources :dishes, only: [:show, :index] do
    resources :restaurants
  end
  resources :restaurant_dishes
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
