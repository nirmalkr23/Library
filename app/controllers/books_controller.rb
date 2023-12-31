class BookController < ApplicationController

    # GET /books
  def index
    @books = Book.all
    render json: @books
  end

  # GET /books/1
  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  # POST /books
  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
  end

  def book_params
    params.require(:Book).permit(:book_name, :book_price, :book_author)
  end
end
