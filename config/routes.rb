Rails.application.routes.draw do
  resources :pain_amounts
  get 'pages/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome' 
end
