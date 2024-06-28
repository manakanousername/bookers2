class UsersController < ApplicationController
  def create
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to new_book_path, notice: 'Book was successfully created.'
    else
      render :new
    end
  end
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books  ##useのbooksをすべて取得
    @book =Book.new
  end

  def index
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
