class DojoControllersController < ApplicationController
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
    @dojo_student = Dojo.find(params[:id]).students
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

  def add_student
    @all_dojo = Dojo.all
    @dojo = Dojo.find(params[:id])
    render 'new_student'
  end

  def add_student_process
    student = Student.create(student_params)
    redirect_to "/"
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
  
  def student_params
    params.require(:student).permit(:fname, :lname, :email, :dojo)
  end
    
end
