Rails.application.routes.draw do
  
  resources :users, only: [:create, :update, :index]
  resources :meditation_sessions, only: [:create, :index]
  resources :focus_sessions, only: [:create, :index]

  post "/login", to: "users#login"

  get "/persist", to: "users#persist"

end
