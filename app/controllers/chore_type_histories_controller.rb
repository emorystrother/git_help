class ChoreTypeHistoriesController < ApplicationController

  def index
     @chore_type_histories = ChoreTypeHistory.all
  end

  def show
    @chore_type_history = ChoreTypeHistory.find_by(id: params[:id])
  end

  def new
  end

  def create
    @chore_type_history = ChoreTypeHistory.new
    @chore_type_history.student_id = params[:student_id]
    @chore_type_history.type_of_chore_id = params[:type_of_chore_id]

    if @chore_type_history.save
      redirect_to chores_url, notice: "Chore type history created successfully."
    else
      render 'new'
    end
  end

  def edit
    @chore_type_history = ChoreTypeHistory.find_by(id: params[:id])
  end

  def update
    @chore_type_history = ChoreTypeHistory.find_by(id: params[:id])
    @chore_type_history.student_id = params[:student_id]
    @chore_type_history.type_of_chore_id = params[:type_of_chore_id]

    if @chore_type_history.save
      redirect_to chore_type_histories_url, notice: "Chore type history updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @chore_type_history = ChoreTypeHistory.find_by(id: params[:id])
    @chore_type_history.destroy

    redirect_to chore_type_histories_url, notice: "Chore type history deleted."
  end
end
