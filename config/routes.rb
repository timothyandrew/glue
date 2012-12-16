Glue::Application.routes.draw do
  resources :snippets, only: [:new, :create, :show]
  root :to => 'snippets#new'
end
