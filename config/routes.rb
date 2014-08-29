Rails.application.routes.draw do
  match('/', {via: :get, to: 'e#index'})
  match('e/new', {via: :get, to: 'e#new'})
  match('e', {via: :post, to: 'e#create'})
  match('e/:id', {via: :get, to: 'e#show'})
  match('e/:id/edit', {via: :get, to: 'e#edit'})
  match('e/:id', {via: [:patch, :put], to: 'e#update'})
  match('e/:id', {via: :delete, to: 'e#destroy'})
end
