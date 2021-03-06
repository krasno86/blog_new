Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'articles/home'
  root 'articles#home'

  resources :articles do
    resources :coments
end

  post '/articles/:article_id/coments', to: 'coments#create', as: :article_comments
  # get 'coments/partial', to: 'coments#partial'
end
