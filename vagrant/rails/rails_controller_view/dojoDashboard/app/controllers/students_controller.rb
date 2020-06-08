class StudentsController < ApplicationController
  def index
    @all_student = Student.all
  end
end
