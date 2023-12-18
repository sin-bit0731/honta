class RentalBooksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @rental_books = RentalBook.all.order(created_at: :desc)
  end

  def new
    @rental_book = Rental_book.new
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end