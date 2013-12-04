class TypeOfChore < ActiveRecord::Base
# belongs_to :director
# has_many :roles
# has_many :actors, :through => roles

has_many :chores
has_many :students, :through => :chore_type_histories

end

