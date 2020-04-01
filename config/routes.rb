Rails.application.routes.draw do
  
  resources :users, only: [:create, :update, :index]
  resources :meditation_sessions, only: [:create, :index, :destroy]
  resources :focus_sessions, only: [:create, :index, :destroy]

  post "/login", to: "users#login"

  get "/persist", to: "users#persist"

  get "/weather", to: "weather#show"

end