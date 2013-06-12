Blogger::Application.routes.draw do
  resources :articles
  resources :tags
  root to: 'articles#index'
  resources :articles do
  resources :comments
  end
end
