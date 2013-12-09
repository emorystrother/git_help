class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
# belongs_to :director
# has_many :roles
# has_many :actors, :through => roles

has_many :chores
has_many :type_of_chores, :through => :chore_type_histories

def full_name
    return first_name + " " + last_name
  end

<<<<<<< HEAD
#validates :first_name, :presence => true
#validates :last_name, :presence => true
#validates :address, :presence => true
#validates :cell_phone, :presence => true, :numericality => true, :uniqueness => true
validates :nu_email, :uniqueness => true
#validates :student_id, :presence => true, :numericality => true, :uniqueness => true
=======
# validates :first_name, :presence => true
# validates :last_name, :presence => true
# validates :address, :presence => true
# validates :cell_phone, :presence => true, :numericality => true, :uniqueness => true
 validates :email, :uniqueness => true
# validates :student_id, :presence => true, :numericality => true, :uniqueness => true
>>>>>>> 21435be3be86acf2477750b6114ce3ff8c38faa9

end
