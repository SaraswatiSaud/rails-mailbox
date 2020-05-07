# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :emails
  root to: 'emails#index'
end
