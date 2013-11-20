class TaskHaversController < ApplicationController

  def index
    @task_havers = TaskHaver.all
  end

  def show
    @task_haver = TaskHaver.find_by(id: params[:id])
  end

  def new
  end

  def create
    @task_haver = TaskHaver.new
    @task_haver.first_name = params[:first_name]
    @task_haver.last_name = params[:last_name]
    @task_haver.address = params[:address]
    @task_haver.image = params[:image]
    @task_haver.email = params[:email]
    @task_haver.cell_phone = params[:cell_phone]

    if @task_haver.save
      redirect_to task_havers_url, notice: "Task haver created successfully."
    else
      render 'new'
    end
  end

  def edit
    @task_haver = TaskHaver.find_by(id: params[:id])
  end

  def update
    @task_haver = TaskHaver.find_by(id: params[:id])
    @task_haver.first_name = params[:first_name]
    @task_haver.last_name = params[:last_name]
    @task_haver.address = params[:address]
    @task_haver.image = params[:image]
    @task_haver.email = params[:email]
    @task_haver.cell_phone = params[:cell_phone]

    if @task_haver.save
      redirect_to task_havers_url, notice: "Task haver updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @task_haver = TaskHaver.find_by(id: params[:id])
    @task_haver.destroy

    redirect_to task_havers_url, notice: "Task haver deleted."
  end
end
