Rails.application.routes.draw do
  # get 'reviews/create'
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/show'
  # get 'restaurants/create'
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:create, :index, :new, :show] do
    resources :reviews, only: [:create, :index, :new, :show]
  end
  root to: 'restaurants#index'
end
