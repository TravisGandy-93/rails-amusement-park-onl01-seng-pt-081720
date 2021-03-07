Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :attractions, :rides, :users, :sessions

  get '/signin', to: 'sessions#new'

  delete '/signout', to: 'sessions#destroy'

  root to: "sessions#splash"
end
