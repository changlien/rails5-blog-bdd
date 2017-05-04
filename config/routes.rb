Rails.application.routes.draw do
  get 'articles/index'

  root to: "articles#index"
end
