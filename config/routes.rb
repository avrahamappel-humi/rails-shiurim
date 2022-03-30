# frozen_string_literal: true

Rails.application.routes.draw do
  get "/" => "shiurim#index", as: "root"
  get "shiurim" => "shiurim#index"
  get "shiurim/:id" => "shiurim#show", as: "shiur"
  get "shiurim/:id/edit" => "shiurim#edit", as: "shiur_edit"
  patch "shiurim/:id" => "shiurim#update", as: "shiur_update"
end
