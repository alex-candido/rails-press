Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  devise_for :users
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'posts#index'
end
