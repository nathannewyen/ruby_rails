class DojoControllersController < ApplicationController
  def index
    @all_dojo = Dojo.all
  end
  
  def create
    Dojo.create(
      branch: params[:branch], 
      street: params[:street],
      city: params[:city],
      state: params[:state]
    )

    redirect_to '/'
  end

  def info
    @dojo = Dojo.find(params[:id])
  end

  def new
    render 'new'
  end
end
