Rails.application.routes.draw do
  resources :reportes
  resources :especie_images
  devise_for :users
  resources :users, only: [:index, :show, :destroy]
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



  root 'especies#index'


end
