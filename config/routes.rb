Rails.application.routes.draw do
  get 'articles', to: 'articles#index'
  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create', as: :title
  get 'articles/:id/edit', to: 'articles#edit', as: :edit
  patch 'articles/:id', to: 'articles#update'
  get 'articles/:id', to: 'articles#show', as: :article
  delete 'articles/:id', to: 'articles#destroy', as: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
