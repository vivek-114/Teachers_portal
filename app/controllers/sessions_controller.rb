class SessionsController < ApplicationController
  def new
  end

  def create
    teacher = Teacher.find_by(email: params[:session][:email].downcase)
    if teacher && teacher.authenticate(params[:session][:password])
      log_in teacher
      redirect_to teacher_home_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private

  def log_in(teacher)
    session[:teacher_id] = teacher.id
  end

  def log_out
    session.delete(:teacher_id)
    @current_teacher = nil
  end

end
