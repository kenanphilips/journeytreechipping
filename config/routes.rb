Rails.application.routes.draw do

  devise_for :admins

  resources :clients

  get '/admin', to: 'admins#index'

  root 'clients#new'

end
