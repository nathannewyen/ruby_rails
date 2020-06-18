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
          session[:user_id] = user[0].id
          redirect_to "/events"
        else
          redirect_to login_url, notice: "Invalid (Nested) login Attempt"
        end
      else
        redirect_to login_url, notice: "Invalid login Attempt"
      end
  end

  def destroy
    # log out user
    session[:user_id] = nil
    redirect_to login_url
    # set session [:user_id] to nil
    # redirect to login page
  end
end
