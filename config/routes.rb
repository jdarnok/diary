Rails.application.routes.draw do


  root to: 'Welcome#index'
  resources :subjects
end
