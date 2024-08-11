class StudentsController < ApplicationController
  before_action :require_login
  before_action :set_student, only: [:edit, :update, :destroy]

  def index
    binding.pry
    @students = current_teacher.students
  end

  def new
    @student = Student.new
  end

  def create
    @student = current_teacher.students.build(student_params)
    existing_student = current_teacher.students.find_by(name: @student.name, subject_name: @student.subject_name)

    if existing_student
      existing_student.marks += @student.marks
      if existing_student.save
        flash[:success] = "Marks updated for existing student."
        redirect_to teacher_home_path
      else
        render 'new'
      end
    elsif @student.save
      flash[:success] = "Student successfully added."
      redirect_to teacher_home_path
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
    render json: {name: "#{@student.name}", subject_name: "#{@student.subject_name}", marks: "#{@student.marks}"}
  end

  def update
    if @student.update(student_params)
      flash[:success] = "Student details updated."
      redirect_to teacher_home_path
    else
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    flash[:success] = "Student removed."
    redirect_to teacher_home_path
  end

  private

  def set_student
    if params["action"] == "update"
      @student = current_teacher.students.find(params[:student][:id])
    else
      @student = current_teacher.students.find(params[:id])
    end
  end

  def student_params
    params.require(:student).permit(:name, :subject_name, :marks)
  end

  def require_login
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_path
    end
  end
end
