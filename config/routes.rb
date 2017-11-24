Rails.application.routes.draw do

  # patch '/clients/:id/archived', to: 'clients#archived', as: :archived_client

  devise_for :admins

  resources :clients do
    put 'archived', on: :member
  end

  # resources :clients

  get '/admin', to: 'admins#index'

  root 'clients#new'
end
