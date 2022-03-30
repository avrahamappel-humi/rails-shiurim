# frozen_string_literal: true

Rails.application.routes.draw do
  get "/" => "shiurim#index", as: "root"

  resources "shiurim"
end
