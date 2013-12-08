class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chores
  has_many :type_of_chores, :through => :chore_type_histories

  def full_name
    return first_name + " " + last_name
  end
end
