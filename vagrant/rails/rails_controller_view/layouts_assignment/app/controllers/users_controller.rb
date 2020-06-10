class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    user = User.create(user_params)
    redirect_to '/users'
  end

  private
  def user_params
    params.require(:user).permit(:fname, :lname, :favorite_language)
  end
end
