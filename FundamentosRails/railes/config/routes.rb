Rails.application.routes.draw do
  resources :roles
  get "perros" => "perros#show"
  resources :mensajes
  resources :rols
  resources :usuarios
  resources :libros
  resources :clientes
  #resources genera todas las rutas de los modelos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
