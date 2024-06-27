class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books  ##useのbooksをすべて取得
  end

  def index
  end
end
