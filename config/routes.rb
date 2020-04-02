Rails.application.routes.draw do
  
  resources :users, only: [:create, :update]
  resources :meditation_sessions, only: [:create, :destroy]
  resources :focus_sessions, only: [:create, :destroy]

  post "/login", to: "users#login"

  get "/persist", to: "users#persist"

  get "/weather", to: "weather#show"

end