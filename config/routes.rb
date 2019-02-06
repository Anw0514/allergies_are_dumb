Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :allergies
  resources :recipes
  resources :ingredients
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
