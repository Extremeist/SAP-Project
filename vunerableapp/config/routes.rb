Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'posts#index'
  devise_scope :user do
  get '/users/sign_out' , to: 'devise/sessions#destroy'
  end
end