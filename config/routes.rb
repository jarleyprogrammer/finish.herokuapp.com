Rails.application.routes.draw do
  
  devise_for :users
  
  root to: 'home#index'


  resources :home
  resources :publications
  resources :mis_publications
  resources :perfil
  resources :acerca_de
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
