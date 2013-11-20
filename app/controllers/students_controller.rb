class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.address = params[:address]
    @student.image = params[:image]
    @student.nu_email = params[:nu_email]
    @student.cell_phone = params[:cell_phone]
    @student.student_id = params[:student_id]

    if @student.save
      redirect_to students_url, notice: "Student created successfully."
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.address = params[:address]
    @student.image = params[:image]
    @student.nu_email = params[:nu_email]
    @student.cell_phone = params[:cell_phone]
    @student.student_id = params[:student_id]

    if @student.save
      redirect_to students_url, notice: "Student updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy

    redirect_to students_url, notice: "Student deleted."
  end
end
