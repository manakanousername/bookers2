class BooksController < ApplicationController
  def new
    @book = Book.new
    @books = Book.all
  end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to new_book_path, notice: 'Book was successfully created.'  ##books/newにリダイレクト
    else
      render :new
    end
  end
  def index
    if params[:user_id].present?
      @user = User.find(params[:user_id])
      @books = @user.books
      @profile_image = @user.get_profile_image.variant(resize: "100x100") if @user.get_profile_image.attached?
    else
      @books = Book.all
    end
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
