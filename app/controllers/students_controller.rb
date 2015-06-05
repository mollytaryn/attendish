class StudentsController < ApplicationController

  def index
  end

  def list_all
    @students = Student.all
  end

end
