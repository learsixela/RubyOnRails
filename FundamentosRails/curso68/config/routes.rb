Rails.application.routes.draw do
  get 'roles/index'
  get 'roles/new'
  get 'roles/update'
  get 'roles/create'
  get 'roles/show'
  get 'roles/delete'
  get 'roles/perro'
  get 'productos/index'
  get 'productos/edit'
  get 'productos/new'
  resources :mensajes
  resources :usuarios
  resources :roles
  resources :rols
  resources :articulos
  resources :clientes

  # get "productos" => "productos#index" # solo una ruta
  resources :productos
  
  # get '/index', to: 'index#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
