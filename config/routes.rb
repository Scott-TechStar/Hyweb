Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    get :download_recipe
    resources :comments, module: :recipes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories

  root 'pages#index'

end
