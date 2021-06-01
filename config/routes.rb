Rails.application.routes.draw do
  resources :quotations
  post '/fetch', to: 'quotations#fetch'
  root 'quotations#index'
end
