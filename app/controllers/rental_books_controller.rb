class RentalBooksController < ApplicationController
  before_action :set_rental_book, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @rental_books = RentalBook.all.order(created_at: :desc)
  end

  def new
    @rental_book = RentalBook.new
  end

  def create
    @rental_book = RentalBook.new(rental_book_params)
    if @rental_book.save
      redirect_to root_path(id: current_user)
    else
      render :new
    end
  end

  def show
    @user = @rental_book.user
  end

  def edit
  end

  def update
    @rental_book.update(rental_book_params)
    if @rental_book.update(rental_book_params)
      redirect_to rental_book_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @rental_book = RentalBook.find(params[:id])
    @rental_book.destroy(rental_book_params)
    redirect_to root_path(id: current_user)
  end

  private

  def rental_book_params
    params.require(:rental_book).permit(:title, :author, :publisher, :category_id, :condition_id, :description, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @rental_book.user
  end

  def set_rental_book
    @rental_book = RentalBook.find(params[:id])
  end
end