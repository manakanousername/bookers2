class HomesController < ApplicationController
  def top
  end
  def about
    @user = User.find(params[:id])
  end
end
