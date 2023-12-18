class RentalBooksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @rental_books = RentalBook.all.order(created_at: :desc)
  end

  def new
    @rental_book = RentalBook.new
  end

  def create
    @rental_book = RentalBook.new(rental_book_params)
  end

  private

  def rental_book_params
    params.require(:rental_book).permit(:title, :auther, :publisher, :category_id, :condition_id, :description, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end