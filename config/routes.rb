Rails.application.routes.draw do
  get 'me/show'
  get 'auth/failure', to: redirect('/')
  get 'me', to: 'me#show', as:'me'
  root to: 'home#index'
  get 'home/index'
  get '/callback' => 'home#callback'
  get '/logout' => 'home#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
