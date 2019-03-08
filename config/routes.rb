Rails.application.routes.draw do
  resources :colour_arts
  root to: 'colour_arts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
