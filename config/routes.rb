Rails.application.routes.draw do
  resources :typescripts
  resources :news_cards
  resources :appointments
  root to: 'appointments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
