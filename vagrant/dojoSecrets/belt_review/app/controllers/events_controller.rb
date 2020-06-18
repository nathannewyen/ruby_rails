class EventsController < ApplicationController
    def index
    if !session[:user_id]
      redirect_to '/users'
    else
      @user = User.find(session[:user_id])
      @event = Event.where(state: @user.state)
      @other_event = Event.where.not(state: @user.state)
    end
  end

  def show
    if !session[:user_id]
      redirect_to '/users'
    else
      @user = User.find(session[:user_id])
      @event = Event.find(params[:id])
      @comment = Comment.where(event_id:@event.id)
    end
  end

  def create
    if !session[:user_id]
      redirect_to '/users'
    else
      @event = Event.new(events_params)
      @event.host_id = session[:user_id]
      if @event.save
        redirect_to :root
      else
        flash[:errors] = @event.errors.full_messages
        redirect_to :back
      end
    end
  end

  def edit
    if !session[:user_id]
      redirect_to '/users'
    else
      @event = Event.find(params[:id])
    end
  end

  def update
    if !session[:user_id]
      redirect_to '/users'
    else
      @event = Event.find(params[:id])
      if @event.update(events_params)
        redirect_to :root
      else
        flash[:errors] = @event.errors.full_messages
        redirect_to :back
      end
    end
  end

  def destroy
    if !session[:user_id]
      redirect_to '/users'
    else
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to :back
    end 
  end

  private
    def events_params
      params.require(:event).permit(:name, :date, :city, :state)
    end
end
