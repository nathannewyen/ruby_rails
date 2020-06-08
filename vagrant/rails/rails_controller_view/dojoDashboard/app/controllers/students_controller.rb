class StudentsController < ApplicationController
    def show
        @student = Student.find(params[:id])
        @dojo = Dojo.find(params[:dojo_id])
        @students = @dojo.students.where.not(id:params[:id])
        render 'info'
    end 

    def new
        @all_dojo = Dojo.all
        @dojo = Dojo.find(params[:dojo_id])
        render 'new'
    end

    def create
        student = Student.create(student_params)
        redirect_to "/dojos/#{student_params[:dojo_id]}"
    end

    def update
        dojo = Dojo.find(params[:dojo_id])
        student = Student.find(params[:id])
        student.update(student_params)
        student.save
        redirect_to "/dojos/#{dojo.id}/students/#{student.id}"
    end

    def destroy
        dojo = Dojo.find(params[:dojo_id])
        Student.find(params[:id]).destroy
        redirect_to "/dojos/#{dojo.id}"
    end

    def edit
        @student = Student.find(params[:id])
        @all_dojo = Dojo.all
        @dojo = Dojo.find(params[:dojo_id])
        render 'edit'
    end

    def student_params
        params.require(:student).permit(:fname, :lname, :email, :dojo_id)
    end

end
