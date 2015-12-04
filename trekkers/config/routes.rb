Rails.application.routes.draw do

  

  root 'land_page#home'

  get 'register' => 'users#new'

  get 'previous' => 'pages#previous'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  resources :users
end
