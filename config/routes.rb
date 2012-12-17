Glue::Application.routes.draw do
  resources :snippets, only: [:new, :create, :show]
  root :to => 'snippets#new'

  match 'login', to: 'sessions#new', as: 'login'
  match 'auth/:provider/callback', :to => 'sessions#create'
  match 'logout', to: 'sessions#destroy'
end
