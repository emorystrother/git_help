class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :task_haver_id
      t.string :student_id
      t.string :type_of_chore_id
      t.string :description_of_chore
      t.float :review_of_student
      t.float :review_of_task_haver
      t.float :ask_price
      t.float :price
      t.datetime :complete_by
      t.boolean :active
    end
  end
end
