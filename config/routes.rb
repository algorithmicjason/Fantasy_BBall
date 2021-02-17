Rails.application.routes.draw do
  resources :fan_clubs
  resources :mascots
  resources :coaches
  resources :athletes
  resources :teams
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
