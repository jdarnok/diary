Rails.application.routes.draw do

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :subjects
  resources :school_classes
  get '/contact', :to => 'visitors#contact'
end


