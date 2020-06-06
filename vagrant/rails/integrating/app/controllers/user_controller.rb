class UserController < ApplicationController
  def index
    render json: User.all
  end

  def create
    render "index"
  end
  
  def new
    User.create(user_params)
    redirect_to '/users'
  end

  def edit
    render "edit"
  end

  def user
    render json: User.first
  end

  def total
    @total = User.all.length
    render text: "Total users: #{@total}"
  end

  private
  def user_params
    params.require(:user).permit(:fname, :lname)
  end
end
