Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "rental_books#index"
  resources :rental_books, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show]
end