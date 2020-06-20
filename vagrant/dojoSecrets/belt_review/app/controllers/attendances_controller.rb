class AttendancesController < ApplicationController
    def join
        @user = User.find(session[:id])
        @event = Event.find(params[:id])
        @event.users << @user
        @event.save
        redirect_to :back
    end

    def destroy
        @user = User.find(session[:id])
        @event = Event.find(params[:id])
        @event.users.destroy(@user)
        @event.save
        redirect_to :back
    end
end
