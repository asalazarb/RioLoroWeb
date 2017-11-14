Rails.application.routes.draw do
  resources :reportes
  resources :especie_images
  devise_for :users
  resources :users, :path => 'admin'
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

  post 'especies/search' => 'especies#search', as: 'search_especies'

  match '*a', :to => 'errors#show', via: :get
end
