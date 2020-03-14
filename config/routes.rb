Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/:page" => "pages#show"
end
