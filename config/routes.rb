Rails.application.routes.draw do
  resources :typescripts
  resources :news_cards
  resources :appointments
  root to: 'appointments#index'
end
