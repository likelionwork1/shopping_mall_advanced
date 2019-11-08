Rails.application.routes.draw do
  resources :posts
  resources :posts do
    resources :comments
  end
  devise_for :users
  get 'homes/index'
  root 'homes#index'
  
  get 'hearts/toggle_heart/:id' => 'hearts#toggle_heart', as: :hearts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
