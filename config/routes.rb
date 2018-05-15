Rails.application.routes.draw do
  get 'tokens/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :tokens, only: [:create]
end
