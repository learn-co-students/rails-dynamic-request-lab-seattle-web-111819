class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    student = Student.find_by_id(params[:id])
    @first_name = student.first_name 
    @last_name = student.last_name
  end
end