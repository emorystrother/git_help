class CreateTypeOfChores < ActiveRecord::Migration
  def change
    create_table :type_of_chores do |t|
      t.string :name
    end
  end
end
