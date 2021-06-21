Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # # uma página com todos restaurantes
  # get '/restaurants', to: 'restaurants#index'

  # # mostrar um form pro usuário (de novo restaurant)
  # get '/restaurants/new', to: 'restaurants#new'

  # # uma página com infos de um restaurante
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  
  # # cria o restaurante no db
  # post '/restaurants', to: 'restaurants#create'

  # # formulario para editar o restaurante
  # get '/restaurants/:id/edit', to: 'restaurants#edit'

  # # atualiza o restaurante no db
  # patch '/restaurants/:id', to: 'restaurants#update'

  # # deletar restaurante
  # delete '/restaurants/:id', to: 'restaurants#destroy'
  resources :restaurants

  # resources :restaurants, except: [:index, :show, :new]
  # resources :restaurants, only: [:index, :show, :new]
end
