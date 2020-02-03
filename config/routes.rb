Rails.application.routes.draw do
  get 'visits/index'
  get '/visits/new', to: 'visits#new'
  root 'visits#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
