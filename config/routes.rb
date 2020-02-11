Rails.application.routes.draw do
  get 'visits/index'
  get '/visits/new', to: 'visits#new', as: 'new_visit'
  get '/visits/:id', to: 'visits#show'
  get '/visits/:id', to: 'visits#show', as: 'visit'
  get '/visits/:id/edit', to: 'visits#edit', as: 'edit_visit'
  patch '/visits/:id', to: 'visits#update'
  post "visits", to: 'visits#create'
  delete '/visits/:id', to: 'visits#destroy'
  root 'visits#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
