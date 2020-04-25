Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :games do
    resources :reviews
    resources :videogames
    resources :pcgame
    resources :socialgame
  end
   get 'games/:id/destroy' => 'games#destroy'
   resources :users
   get 'users/users/:id' => 'users#listofposts'
   root to: 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
