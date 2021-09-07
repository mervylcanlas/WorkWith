Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get '/admin', to: "admin#index"
  get '/users', to: "user#index"
  resources :user_info
  resources :projects do
    resources :project_features
  end
  resources :careers
  get '/portfolio/:username', to: 'portfolio#index'
  resources :jobs
  resources :applications
end
