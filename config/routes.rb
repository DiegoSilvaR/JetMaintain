Rails.application.routes.draw do
  get 'welcome/index'
  get 'terms_and_conditions', to: 'welcome#terms_and_conditions', as: 'terms_and_conditions'
  post '/terms_and_conditions', to: 'welcome#accept_terms', as: 'accept_terms'

  # Rutas para Devise (autenticación de usuario)
  devise_for :users

  # Rutas estáticas
  root 'welcome#index'




  # Rutas para los modelos Motores y Mantenimientos
  resources :motors
  resources :mantenimientos

  # Otras rutas que puedas necesitar
end
