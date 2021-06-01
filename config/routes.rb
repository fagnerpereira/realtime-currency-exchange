Rails.application.routes.draw do
  resources :quotations
  root 'quotations#index'
end
