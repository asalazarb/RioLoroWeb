Rails.application.routes.draw do
  devise_for :users
  resources :tipo_usuarios
  resources :usuarios
  resources :accions
  resources :logs
  resources :inventarios
  resources :clases
  resources :familia
  resources :ordens
  resources :reinos
  get 'home/index'
  resources :especies

  root 'home#index'

  
end
