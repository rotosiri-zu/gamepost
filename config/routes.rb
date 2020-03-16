Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :gameposts
  get 'gameposts/:id/destroy' => 'gameposts#destroy'
  resources :users
  root to: 'gameposts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
