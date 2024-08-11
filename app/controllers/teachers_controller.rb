class TeachersController < ApplicationController
  def home
    @students = current_teacher.students
  end

  private

  def require_login
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_path
    end
  end
end