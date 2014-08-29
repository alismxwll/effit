Rails.application.routes.draw do
  match('/', {via: :get, to: 'effit#index'})
  match('effit/new', {via: :get, to: 'effit#new'})
  match('effit', {via: :post, to: 'effit#create'})
  match('effit/:id', {via: :get, to: 'effit#show'})
  match('effit/:id/edit', {via: :get, to: 'effit#edit'})
  match('effit/:id', {via: [:patch, :put], to: 'effit#update'})
  match('effit/:id', {via: :delete, to: 'effit#destroy'})
end
