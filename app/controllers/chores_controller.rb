class ChoresController < ApplicationController

  def index
    @chores = Chore.all
  end

  def show
    @chore = Chore.find_by(id: params[:id])
  end

  def new
  end

  def create
    @chore = Chore.new
    @chore.task_haver_id = params[:task_haver_id]
    @chore.student_id = params[:student_id]
    @chore.type_of_chore_id = params[:type_of_chore_id]
    @chore.description_of_chore = params[:description_of_chore]
    @chore.review_of_student = params[:review_of_student]
    @chore.review_of_task_haver = params[:review_of_task_haver]
    @chore.ask_price = params[:ask_price]
    @chore.price = params[:price]
    @chore.complete_by = params[:complete_by]
    @chore.active = params[:active]

    if @chore.save
      redirect_to chores_url, notice: "Chore created successfully."
    else
      render 'new'
    end
  end

  def edit
    @chore = Chore.find_by(id: params[:id])
  end

  def update
    @chore = Chore.find_by(id: params[:id])
    @chore.task_haver_id = params[:task_haver_id]
    @chore.student_id = params[:student_id]
    @chore.type_of_chore_id = params[:type_of_chore_id]
    @chore.description_of_chore = params[:description_of_chore]
    @chore.review_of_student = params[:review_of_student]
    @chore.review_of_task_haver = params[:review_of_task_haver]
    @chore.ask_price = params[:ask_price]
    @chore.price = params[:price]
    @chore.complete_by = params[:complete_by]
    @chore.active = params[:active]

    if @chore.save
      redirect_to chores_url, notice: "Chore updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @chore = Chore.find_by(id: params[:id])
    @chore.destroy

    redirect_to chores_url, notice: "Chore deleted."
  end
end
