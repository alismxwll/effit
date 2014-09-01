Rails.application.routes.draw do
  match('/', {via: :get, to: 'subeffits#index'})
  match('e', {via: :get, to: 'subeffits#index'})
  match('e/new', {via: :get, to: 'subeffits#new'})
  match('e/:id', {via: :get, to: 'subeffits#show'})
  match('e/', {via: :post, to: 'subeffits#create'})
  match('e/:id/edit', {via: :get, to: 'subeffits#edit'})
  match('e/:id', {via: [:patch, :put], to: 'subeffits#update'})
  match('e/:id', {via: :delete, to: 'subeffits#destroy'})
end
