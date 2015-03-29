Rails.application.routes.draw do

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :subjects

  get '/contact', :to => 'visitors#contact'
end


