Rails.application.routes.draw do
  root to: 'pages#show'
  get '*path', to: 'pages#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
