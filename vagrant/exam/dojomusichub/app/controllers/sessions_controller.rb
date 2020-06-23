class SessionsController < ApplicationController
  def index
    if session[:user_id]
      redirect_to '/songs'
    end
  end

  def login
  	user = User.find_by_email(params[:email])
  	if !user.nil? and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		flash[:success] = ["Welcome Back #{current_user.first_name}!"]
  		redirect_to songs_path
  	else
  		flash[:warning] = ["Invalid credentials"]
  		redirect_to users_path
  	end
  end
  
  def logout
    session[:user_id] = nil
    @current_user = nil
    redirect_to '/'
  end
end
