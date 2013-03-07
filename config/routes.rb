Formula::Application.routes.draw do

root to: "home#index"

resources :teams
resources :drivers
resources :races

end
