Rails.application.routes.draw do

  devise_for :admins

  resources :clients do
    put 'archived', on: :member
  end
  
  get '/admin', to: 'admins#index'

  root 'clients#new'
end
