class DojosController < ApplicationController
  def index
    @all_dojo = Dojo.all
  end

  def new
    render 'new'
  end
  
  def create
    dojo = Dojo.create(dojo_params)
    redirect_to '/dojos'
  end

  def show
    @dojo = Dojo.find(params[:id])
    @dojo_student = Dojo.find(params[:id]).students
    render 'info'
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

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/dojos'
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
    
end
