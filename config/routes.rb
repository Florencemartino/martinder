Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :conversations do
    resources :messages
  end

  resources :matches

  resources :users
  
  #root 'conversations#index'

  root to: 'pages#home'
end
