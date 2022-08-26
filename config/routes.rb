Rails.application.routes.draw do
  devise_for :users
  resources :blogs

  # Main
  
  # Blog
  get 'blog/index'

  # Home
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/journey'

  # Redirect Path
  get '*path' => redirect('/') #// redirects to home page if the route is not found.

  # Devise
  get 'users/sign_in'
  get 'user/sign_up'






  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
