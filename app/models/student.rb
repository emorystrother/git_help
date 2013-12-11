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
def chore_type_history
  return ChoreTypeHistories.where(:student_id => id)
end

# validates :first_name, :presence => true
# validates :last_name, :presence => true
# validates :address, :presence => true
# validates :cell_phone, :presence => true, :numericality => true, :uniqueness => true
 validates :email, :uniqueness => true
# validates :student_id, :presence => true, :numericality => true, :uniqueness => true
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> parent of 21435be... RaghuMeetingTake2!
=======
>>>>>>> parent of 21435be... RaghuMeetingTake2!
validates :first_name, :presence => true
validates :last_name, :presence => true
validates :address, :presence => true
validates :cell_phone, :presence => true, :numericality => true, :uniqueness => true
validates :nu_email, :uniqueness => true
validates :student_id, :presence => true, :numericality => true, :uniqueness => true
<<<<<<< HEAD
<<<<<<< HEAD
=======
#validates :first_name, :presence => true
#validates :last_name, :presence => true
#validates :address, :presence => true
#validates :cell_phone, :presence => true, :numericality => true, :uniqueness => true
validates :nu_email, :uniqueness => true
#validates :student_id, :presence => true, :numericality => true, :uniqueness => true
>>>>>>> parent of c2b5630... Merge branch 'master' of https://github.com/emorystrother/git_help
=======
>>>>>>> parent of 21435be... RaghuMeetingTake2!
=======
>>>>>>> parent of 21435be... RaghuMeetingTake2!
>>>>>>> 15650f7a494ad8cffaa408b6f9ccf33c439377aa

end
