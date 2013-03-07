Formula::Application.routes.draw do

root to: "home#index"

resources :teams
resources :drivers

end
