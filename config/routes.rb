# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comentarios
  resources :qualificacoes
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match 'ola' => 'ola_mundo#index', via: 'get'

  resources :restaurantes do
    resources :qualificacoes
  end
  match 'inicio', controller: 'restaurantes', action: 'index', via: 'get'

  root 'restaurantes#index'
end
