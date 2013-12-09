class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :image
      t.string :nu_email
      t.string :cell_phone
      t.string :student_id
    end
  end
end
