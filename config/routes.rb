# frozen_string_literal: true

Rails.application.routes.draw do
  root 'converter#index'
  post '/convert', to: 'converter#convert'
end
