Rails.application.routes.draw do

  #mis_publications
  get 'mis_publications/index'

  #publications
  get 'publications/index'
  get 'publications/new'
  get 'publications/show'

  #users
  devise_for :users
  get 'users/sign_in'
  get 'users/sign_out'
  get 'users/sign_up'
  
  #home
  get 'home/index'

  root to: 'home#index'


  resources :home
  resources :publications
  resources :mis_publications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
