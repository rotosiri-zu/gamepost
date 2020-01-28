Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'gameposts#index'
  get 'gameposts' =>  'gameposts#index'
  get 'gameposts/new' => 'gameposts#new'
  post 'gameposts' => 'gameposts#create'
  get 'users/:id' => 'users#show'
  get 'gameposts/:id' => 'gameposts#show'
  get 'gameposts/:id/destroy' => 'gameposts#destroy'
  get '/gameposts/gameposts/:id/edit' => 'gameposts#edit'
  patch 'gameposts/:id' => 'gameposts#update'
end
