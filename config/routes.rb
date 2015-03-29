Rails.application.routes.draw do

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :subjects
<<<<<<< HEAD
  resources :school_classes
=======

  get '/contact', :to => 'visitors#contact'
>>>>>>> ac82ed6282b57b5669f4a2d480c1af13d932e114
end


