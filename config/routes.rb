Rails.application.routes.draw do

  root to: 'whoami#index'

  devise_for :users, :path_prefix =>'auth'

  resources :users

  resources :locations


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
