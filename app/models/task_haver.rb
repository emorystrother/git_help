class TaskHaver < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
# belongs_to :director
# has_many :roles
# has_many :actors, :through => roles

has_many :chores

def full_name
  return first_name + " " + last_name
end

#validates :first_name, :presence => true
#validates :last_name, :presence => true
#validates :address, :presence => true
validates :email, :presence => true,:uniqueness => true
#validates :cell_phone, :presence => true, :numericality => true, :uniqueness => true

end

