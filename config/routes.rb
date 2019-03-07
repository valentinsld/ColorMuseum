Rails.application.routes.draw do
  resources :colour_pieces
  root to: 'colour_pieces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
