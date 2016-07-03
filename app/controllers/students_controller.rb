class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    # @student.active = true
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    #   self.active = true
    # else self.active == true
    #   self.active = false
    # end
    redirect_to "/students/#{@student.id}"
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
