Rails.application.routes.draw do
  resources :mensajes
  resources :usuarios
  resources :rols
  resources :articulos
  resources :proveedors
  resources :clientes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
