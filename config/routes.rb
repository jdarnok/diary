Rails.application.routes.draw do
  root to: 'visitors#index'

  get 'grades/index', as: 'show_grades'
  get 'grades/:id/edit', to: 'grades#edit', as: 'edit_grade'
  patch 'grades/:id/update', to: 'grades#update', as: 'update_grade'
  get 'grades/:id/show', to: 'grades#show', as: 'users_subject_path'

  devise_for :users
  resources :users
  resources :subjects


  resources :school_classes
  get '/contact', :to => 'visitors#contact'

end
