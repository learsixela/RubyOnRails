Rails.application.routes.draw do
  get 'bienvenido/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #carga pagina principal
   root 'bienvenido#index'

end
