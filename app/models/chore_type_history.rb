class ChoreTypeHistory < ActiveRecord::Base
# belongs_to :director
# has_many :roles
# has_many :actors, :through => roles

has_many :students
has_many :chores

# def student
#  return student.findby[id: @chore_type_history.student_id]
# end

# def chore_type_history
#   return ChoreTypeHistories.where(:student_id => id)
# end

end
