Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'cocktail#index'
resources :cocktails, only: [:index, :show, :create, :new] do
  resources :doses, only: [:create, :edit, :update]
end
resources :doses, only: [:destroy]
end
