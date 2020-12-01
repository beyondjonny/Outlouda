Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :companies, only: [:index, :new, :create, :show, :destroy] do
    resources :questions, only: [:index, :new, :create]
  end
end
