Rails.application.routes.draw do
  match('/', {via: :get, to: 'sections#index'})
  match('sections/new', {via: :get, to: 'sections#new'})
  match('sections', {via: :post, to: 'sections#create'})
  match('sections/:id', {via: :get, to: 'sections#show'})
  match('sections/:id/edit', {via: :get, to: 'sections#edit'})
  match('sections/:id', {via: [:patch, :put], to: 'sections#update'})
  match('sections/:id', {via: :delete, to: 'sections#destroy'})
end
