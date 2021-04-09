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

  post '/approve/:id' => 'matches#approve', as: :approve_user
  post '/decline/:id' => 'matches#decline', as: :decline_user
  get '/bravo' => 'matches#bravo', as: :bravo

  root to: 'pages#home'
end
