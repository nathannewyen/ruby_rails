class DojoControllersController < ApplicationController
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
    
  def index
    @all_dojo = Dojo.all
  end

  def new
    render 'new'
  end
  
  def create
    dojo = Dojo.create(dojo_params)
    redirect_to '/'
  end

  def info
    @dojo = Dojo.find(params[:id])
  end

  def edit 
    @dojo = Dojo.find(params[:id])
  end

  def update
    dojo = Dojo.find(params[:id])
    dojo.update(dojo_params)
    dojo.save
    redirect_to "/dojos/#{dojo.id}"
  end

  def delete
    Dojo.find(params[:id]).destroy
    redirect_to '/'
  end
end
