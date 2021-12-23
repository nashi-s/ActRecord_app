# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'acts#index'
  get 'acts/new'
  get 'acts/create'
  devise_for :users
  resources :acts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
