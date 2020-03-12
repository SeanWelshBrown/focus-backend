Rails.application.routes.draw do
  
  resources :users, only: [:create]
  resources :meditation_sessions, only: [:create, :index]
  resources :focus_sessions, only: [:create, :index]

  post "/login", to: "users#login"

  get "/persist", to: "users#persist"

end
