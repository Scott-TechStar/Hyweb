Rails.application.routes.draw do
  resources :recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
end