Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'articles', to: 'articles#index'
  # As a user I can display the details of a article
    get 'articles/new', to: 'articles#new', as: "new_article"
  # As a user I can add a article in my ToDo list
    post 'articles', to: 'articles#create'
    get 'articles/:id/edit', to: 'articles#edit', as: "edit_article"
    get 'articles/:id', to: 'articles#show', as: "article"
  # As a user I can edit the details of a article
    patch 'articles/:id', to: 'articles#update'
  # As a user I can remove a article from my ToDo list
    delete 'articles/:id', to: 'articles#destroy'
end
