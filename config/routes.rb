Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :books

  get 'pages/index'
  get 'pages/my_profile'

  get 'turbo', to: "turbo#index", as: :turbo
  root "pages#index"
end
