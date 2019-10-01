Rails.application.routes.draw do
  #users
  devise_for :users
  get 'users/sign_in'
  get 'users/sign_out'
  get 'users/sign_up'
  
  #home
  get 'home/index'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
