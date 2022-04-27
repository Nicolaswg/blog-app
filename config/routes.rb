Rails.application.routes.draw do
  get 'post/index'
  root 'user#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :user, only: %i[index show] do
    resources :post, only: %i[index show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
