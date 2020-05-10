# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :emails do
    post 'parse_email', on: :collection
  end
  root to: 'emails#index'
end
