Rails.application.routes.draw do
  get 'visits/index'
  get '/visits/new', to: 'visits#new', as: 'new_product'
  get '/visits/:id', to: 'visits#show'
  get '/visits/:id', to: 'visits#show', as: 'visit'
  get '/visits/:id/edit', to: 'visits#edit'
  patch '/products/:id', to: 'products#update'
  post "visits", to: 'visits#create'
  root 'visits#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
