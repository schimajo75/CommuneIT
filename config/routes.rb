Rails.application.routes.draw do

  #root 'clients#index', as: 'home'
  get '/' => 'clients#index', as: 'home'
  post '/sessions' => 'sessions#create'
  post '/clients' => 'clients#create'
  resources :appointments
  resources :consultants, only:[:index, :show]
  resources :clients, only:[:index, :new, :create, :show, :edit, :update]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
