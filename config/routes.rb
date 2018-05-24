Rails.application.routes.draw do
  get 'tokens/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tokens, only: [:create]
  
  resources :users do
    resources :activities
    resources :rsvps
  end

  resources :activities do
    resources :rsvps
  end

  resources :rsvps
  
end
