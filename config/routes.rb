Rails.application.routes.draw do
  devise_for :users
  root to: "rental_books#index"
  resources :rental_books
end