Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create]
  get '/sessions/show', to: 'sessions#show'
  post '/sessions/destroy', to: 'sessions#destroy'

  get '/secrets/show', to: 'secrets#show', as: 'secret'

end
