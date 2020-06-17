class UsersController < ApplicationController
  def index
    @all_user = User.all
  end

  def new
  end

  def create
    user = User.create(user_params)
    if user.valid?
      user.save
      redirect_to '/users'
    else
      redirect_to '/users/new'
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :confirm_pw)
  end

  private
  def check_user
    if current_user != User.find(params[:id])
      redirect_to "/users/#{session[:user_id]}"
    end
  end

end
