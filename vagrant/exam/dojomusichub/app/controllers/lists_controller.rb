class ListsController < ApplicationController

    def show
        @user = User.find(params[:id])
        @songs = List.where(user:@user)
    end

    def add
    current_user = User.find(session[:user_id])
  	song = Song.find(params[:id])
  	list = List.where(song:song).find_by_user_id(current_user.id)
  	if list.nil?
  		l = List.new(song:song,user:current_user, count:1)
  		l.save
  		song.save
  		if !l.errors.empty?
  			flash[:warning] = []
  			l.errors.full_messages.each do |msg|
  				flash[:warning].push(msg)
  			end
  		else
  			flash[:success] = ["Song added to playlist!"]
  		end
  	else
  		count = list.count.to_i 
  		count += 1
  		list.count = count.to_s
  		list.save
  		song.save
  		flash[:success] = ["Song play count incremented!"]
        end
        redirect_to '/songs'
    end
end
