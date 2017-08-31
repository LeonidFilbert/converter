Rails.application.routes.draw do
  root 'converter#index'
  post '/converter', to: 'converter#convert'
end
