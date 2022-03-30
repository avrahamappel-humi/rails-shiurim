# frozen_string_literal: true

Rails.application.routes.draw do
  get "shiurim" => "shiurim#index"
  get "shiurim/:id" => "shiurim#show", as: "shiur"
end
