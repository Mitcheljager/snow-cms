Rails.application.routes.draw do

  get 'website_settings/index'

  get 'website_settings/edit'

  resources :website

  root to: 'website#index'

  get '/admin/homepage' => 'website#edit', :as => 'edit_homepage'

  get '/admin' => 'admin#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :articles

  get '/admin/articles' => 'articles#overview'
  get '/admin/articles/:id/edit' => 'articles#edit', :as => :edit_article_path

  resources :article_categories

  get '/admin/website-settings' => 'website_settings#edit', :as => 'edit_website_settings'

  resources :pages

  get '/pages/index'
  get '/:id' => 'pages#show'

  get '/admin/pages/sort' => 'pages#sort'
  get '/admin/pages' => 'pages#overview'
  get '/admin/pages/:id/edit' => 'pages#edit', :as => :edit_page_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
