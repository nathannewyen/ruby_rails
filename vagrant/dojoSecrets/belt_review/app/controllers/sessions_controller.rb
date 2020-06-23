class SessionsController < ApplicationController
  skip_before_action :require_login

  def new
    # render login page
  end

  def create
    # Log User in
    user = User.where(email: params[:user][:email])
      if !user.empty?
        if user[0].authenticate(params[:user][:password])
          session[:id] = user[0].id
          redirect_to "/events"
        else
          flash[:errors] = @user.errors.full_messages
          redirect_to '/users'
        end
      else
        redirect_to '/users'
      end
  end

  def destroy
    # log out user
    session[:id] = nil
    redirect_to '/users'
    # set session [:user_id] to nil
    # redirect to login page
  end
end
