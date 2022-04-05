# frozen_string_literal: true

Rails.application.routes.draw do
  root "shiurim#index"
  resources :users
  resources :shiurim
  resource :sessions, only: %i[new create destroy]
end
