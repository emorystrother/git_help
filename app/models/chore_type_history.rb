class ChoreTypeHistory < ActiveRecord::Base
# belongs_to :director
# has_many :roles
# has_many :actors, :through => roles

has_many :students
has_many :chores

end
