Rails.application.routes.draw do
  match('/', {via: :get, to: 'subeffits#index'})
  match('e', {via: :get, to: 'subeffits#index'})
  match('e/new', {via: :get, to: 'subeffits#new'})
  match('e/:id', {via: :get, to: 'subeffits#show'})
  match('e/', {via: :post, to: 'subeffits#create'})
  match('e/:id/edit', {via: :get, to: 'subeffits#edit'})
  match('e/:id', {via: [:patch, :put], to: 'subeffits#update'})
  match('e/:id', {via: :delete, to: 'subeffits#destroy'})
  
  match('a', {via: :get, to: 'effers#index'})
  match('a/new', {via: :get, to: 'effers#new'})
  match('a/:id', {via: :get, to: 'effers#show'})
  match('a/', {via: :post, to: 'effers#create'})
  match('a/:id/edit', {via: :get, to: 'effers#edit'})
  match('a/:id', {via: [:patch, :put], to: 'effers#update'})
  match('a/:id', {via: :delete, to: 'effers#destroy'})
end
