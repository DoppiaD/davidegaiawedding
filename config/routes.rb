Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get "/:page" => "pages#show"
  get '/logistics', to: 'pages#logistics'
end
