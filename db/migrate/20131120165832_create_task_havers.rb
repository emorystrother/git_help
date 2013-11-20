class CreateTaskHavers < ActiveRecord::Migration
  def change
    create_table :task_havers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :image
      t.string :email
      t.string :cell_phone
    end
  end
end
