Rails.application.routes.draw do
  scope '(:locale)', locale: /it/ do
    devise_for :users
    root to: 'pages#home'

    get '/logistics', to: 'pages#logistics'
    get '/tourist-info', to: 'pages#touristinfo'

    resources :guests, only: [:index, :edit, :update] do
      member do
        patch :participate
      end
    end
    resources :registries, only: [:index]
    resources :user_registries, only: [:create, :destroy]
  end
end
