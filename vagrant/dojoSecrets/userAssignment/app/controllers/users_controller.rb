class UsersController < ApplicationController
  # callback to require user login
  skip_before_filter :require_login, :only => [:create, :new]
  # callback to validate user 
  before_action :check_user, only: [:edit, :show, :update, :delete]

  def index
    @all_user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.email = params['email']
    @user.name = params['name']
    if @user.valid?
      @user.save
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = ['Invalid entry(s)']
      redirect_to "/users/#{@user.id}"
    end
  end

  def show
    @user = User.find(params[:id])
    @secrets = Secret.all
    @likes = Like.all
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  private
  def check_user
    if current_user != User.find(params[:id])
      redirect_to "/users/#{session[:user_id]}"
    end
  end

end
