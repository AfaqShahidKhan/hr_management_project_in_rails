Rails.application.routes.draw do
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privicy' => 'pages#privicy_policy'
  get 'terms_and_conditions' => 'pages#term_and_conditions'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #---------Two MEthods for define routs
  # get "home/index"
  # get '/home' => 'home#index'

  # for custom root
  root 'home#index'
end
