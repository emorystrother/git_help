class CreateChoreTypeHistories < ActiveRecord::Migration
  def change
    create_table :chore_type_histories do |t|
      t.integer :student_id
      t.integer :type_of_chore_id
    end
  end
end
