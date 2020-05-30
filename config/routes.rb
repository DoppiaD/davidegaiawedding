Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /it/ do
    root to: 'pages#home'
    get '/logistics', to: 'pages#logistics'
    get '/tourist-info', to: 'pages#touristinfo'

    resources :guests, only: [:index, :edit, :update] do
      member do
        patch :participate
      end
      # patch '/guests/:id/participate', to: 'guests#participate'
    end
    resources :registries, only: [:index]
    resources :user_registries, only: [:create, :destroy]
  end
end
