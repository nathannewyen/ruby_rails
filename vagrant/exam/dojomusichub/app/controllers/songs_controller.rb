class SongsController < ApplicationController
  before_action :require_login

  def index
    if !session[:user_id]
      redirect_to ''
    else
      @current_user = User.find(session[:user_id])
      @all_songs = Song.all
    end
  end

  def create
    @current_user = User.find(session[:user_id])
    song = Song.new(title: params[:title], artist: params[:artist])
    if song.valid?
      song.save
    else
      flash[:errors] = song.errors.full_messages
    end
    redirect_to '/songs'
  end

  def show
    if Song.find_by_id(params[:id])
      @song = Song.find(params[:id])
      @users = List.where(song: @song)
    else
      redirect_to '/songs'
    end
  end

end
