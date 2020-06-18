class UsersController < ApplicationController

    def index
        @user = User.new
        if session[:id].nil?
            render '/users/index'
        else
            redirect_to '/events'
        end
    end

    def new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @user.save
            session[:id] = @user.id
            redirect_to '/events'
        else
            flash[:errors] = @user.errors.full_messages
            render 'index'
        end
    end

    def edit
        if !session[:id]
            redirect_to '/users'
        else
            @user = User.find(params[:id])
        end
        render 'edit'
    end

    def update
        if !session[:id]
            redirect_to '/users'
        else
            @user = User.find(params[:id])
            @user.update(update_params)
            if @user.valid?
                redirect_to '/events'
            else
                flash[:errors] = @user.errors.full_messages
                redirect_to "/users/#{@user.id}/edit"
            end
        end 
    end

    def show
        @user = User.find(params[:id])
        render 'show'
    end

    private
    def user_params
        params.require(:user).permit(:fname, :lname, :email, :city, :state, :password, :password_confirmation)
    end

    def update_params
        params.require(:user).permit(:fname, :lname, :email, :city, :state)
    end

end
