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
    redirect_to "/dojos/#{student_params[:dojo_id]}"
  end

  def student_info
    @student = Student.find(params[:student_id])
    @dojo = Dojo.find(params[:id])
    @students = @dojo.students.where.not(id:params[:student_id])
    render 'student_info'
  end

  def student_edit
    @student = Student.find(params[:student_id])
    @all_dojo = Dojo.all
    @dojo = Dojo.find(params[:id])
    render 'edit_student'
  end

  def student_update
    dojo = Dojo.find(params[:id])
    student = Student.find(params[:student_id])
    student.update(student_params)
    student.save
    redirect_to "/dojos/#{dojo.id}/students/#{student.id}"
  end

  def delete_student
    dojo = Dojo.find(params[:id])
    Student.find(params[:student_id]).destroy
    redirect_to "/dojos/#{dojo.id}"
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
  
  def student_params
    params.require(:student).permit(:fname, :lname, :email, :dojo_id)
  end
    
end
