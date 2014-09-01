Rails.application.routes.draw do
  #sections
  match('/', {via: :get, to: 'subeffits#index'})
  match('e', {via: :get, to: 'subeffits#index'})
  match('e/new', {via: :get, to: 'subeffits#new'})
  match('e/:id', {via: :get, to: 'subeffits#show'})
  match('e/', {via: :post, to: 'subeffits#create'})
  match('e/:id/edit', {via: :get, to: 'subeffits#edit'})
  match('e/:id', {via: [:patch, :put], to: 'subeffits#update'})
  match('e/:id', {via: :delete, to: 'subeffits#destroy'})
  #users
  match('a', {via: :get, to: 'effers#index'})
  match('a/', {via: :get, to: 'effers#index'})
  match('a/new', {via: :get, to: 'effers#new'})
  match('a/:id', {via: :get, to: 'effers#show'})
  match('a/', {via: :post, to: 'effers#create'})
  match('a/:id/edit', {via: :get, to: 'effers#edit'})
  match('a/:id', {via: [:patch, :put], to: 'effers#update'})
  match('a/:id', {via: :delete, to: 'effers#destroy'})
  #posts
  match('p', {via: :get, to: 'postits#index'})
  match('p/', {via: :get, to: 'postits#index'})
  match('p/new', {via: :get, to: 'postits#new'})
  match('p/:id', {via: :get, to: 'postits#show'})
  match('p/', {via: :post, to: 'postits#create'})
  match('p/:id/edit', {via: :get, to: 'postits#edit'})
  match('p/:id', {via: [:patch, :put], to: 'postits#update'})
  match('p/:id', {via: :delete, to: 'postits#destroy'})
end
