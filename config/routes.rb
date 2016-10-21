Rails.application.routes.draw do

  get 'pages/index'

  root to: 'website#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :articles

  get '/admin/articles' => 'articles#overview'
  get '/admin/articles/:id/edit' => 'articles#edit', :as => :edit_article_path

  resources :pages

  get '/admin/pages' => 'pages#overview'
  get '/admin/pages/:id/edit' => 'articles#edit', :as => :edit_page_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
