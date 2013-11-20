class TypeOfChoresController < ApplicationController

  def index
    @type_of_chores = TypeOfChore.all
  end

  def show
    @type_of_chore = TypeOfChore.find_by(id: params[:id])
  end

  def new
  end

  def create
    @type_of_chore = TypeOfChore.new
    @type_of_chore.name = params[:name]

    if @type_of_chore.save
      redirect_to type_of_chores_url, notice: "Type of chore created successfully."
    else
      render 'new'
    end
  end

  def edit
    @type_of_chore = TypeOfChore.find_by(id: params[:id])
  end

  def update
    @type_of_chore = TypeOfChore.find_by(id: params[:id])
    @type_of_chore.name = params[:name]

    if @type_of_chore.save
      redirect_to type_of_chores_url, notice: "Type of chore updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @type_of_chore = TypeOfChore.find_by(id: params[:id])
    @type_of_chore.destroy

    redirect_to type_of_chores_url, notice: "Type of chore deleted."
  end
end
