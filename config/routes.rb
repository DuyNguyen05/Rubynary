# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "sessions" }
  resources :words
  resources :users
  resources :projects
  resources :project_words
  resources :histories, only: :index

  get "/search", to: "words#index"
  root "words#index"
end
