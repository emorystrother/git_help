class AddIndexToHaverEmail < ActiveRecord::Migration
  def change
     add_index :task_havers, :email,                :unique => true
  end
end
