class ChoresController < ApplicationController

  # You can store information on the users computer using cookies.
  # rails defined hash: cookies[:user] = params[:first_name]
  # Use gem 'devise' to do login well. Lots of good fuctionality! after install run the generator
    # follow directions!
    # rails generate devise:install (then read instructions)
    # allows for current_user so you can ask for pre-populating .first_name, etc
  # Pattern to dry-up controller code that's used in a lot of places: you can def something such as @picture = Picture.find(params[:id])
    #even more powerfully before_action(:find_picture, :only =>[:show,:edit,:update])
    #you can do these in any order
    #with devise use authorize_user! to allow exception on the sign-in page.
    # use this to authenticate ADMIN!!

  def index
    @chores = Chore.all
    Chore.new.student_id = 1
    # change to chore_number = params[page]
  end

  def show
    @chore = Chore.find_by(id: params[:id])
  end

  def new
    @chore = Chore.new
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
