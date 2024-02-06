class BooksController < ApplicationController

  def index
    @books = Book.order(:id)
  end

  def new
    @count = Book.count
    @book = Book.new(id: @count + 1)

  end

  def show
    
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path , notice: "Book Created"

    else
      @count = Book.count
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])

  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book), notice: "Book Updated"
    else
      @count = Book.count
      render('edit')
    end

  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    
    redirect_to books_path, notice: "Book deleted"
  end

  private
  
  def book_params
    params.require(:book).permit(:title, :author, :publishedDate, :price)
  end


end
