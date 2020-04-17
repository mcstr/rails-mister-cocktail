Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'cocktails#home'

resources :cocktails, only: [:index, :new, :create, :show,:update, :edit] do
  resources :doses, only: [:new, :create]
  resources :reviews, only: [:create]
end

resources :doses, only: [:destroy, :edit, :update]
resources :reviews, only: [:destroy]

end
