Rails.application.routes.draw do

  root 'clients#index', as: 'home'
  resources :appointments
  resources :consultants, only:[:index, :show]
  resources :clients, only:[:new, :create, :show, :edit, :update, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
