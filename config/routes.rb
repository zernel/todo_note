Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "public#index"

  resources :tasks, only: [:index, :create] do
    patch :finish
  end
end
