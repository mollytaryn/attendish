class AttendancesController < ApplicationController

  def new
    @attendances = Attendance.new
    @students = Student.all
  end

  def create
    @attendances = Attendance.new(attendance_params)
    student = Student.find(attendance_params[:student_id])
    redirect_to new_attendances_path, notice: "#{student.name} attended class today."

  end

  def attendance_params
    print params
    params.require(:attendance).permit(:student_id, :present?)
  end
end
