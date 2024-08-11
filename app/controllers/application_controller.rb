class ApplicationController < ActionController::Base
  helper_method :current_teacher, :logged_in?

  def current_teacher
    @current_teacher ||= Teacher.find_by(id: session[:teacher_id])
  end

  def logged_in?
    !current_teacher.nil?
  end
end
