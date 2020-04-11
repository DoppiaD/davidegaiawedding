Rails.application.routes.draw do

  get 'registries/index'
  devise_for :users
  root to: 'pages#home'
  get '/logistics', to: 'pages#logistics'
  get '/tourist-info', to: 'pages#touristinfo'
  
  resources :guests, :only => [:index, :edit, :update] do
    patch :participate
  end
end
