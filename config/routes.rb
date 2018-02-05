Rails.application.routes.draw do

  root to: 'whoami#index'

  devise_for :users, :path_prefix =>'auth'
  resources :users
  resources :locations
  # resources :locations do
  #   match :typeahead, via: :get, on: :collection
  # end

  resources :units do
    match :typeahead, via: :get, on: :collection
  end
  resources :employees
  resources :shift_types
  resources :shifts do
    collection do
      get :create_this_month_shift
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
