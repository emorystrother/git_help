class Chore < ActiveRecord::Base
# belongs_to :director
# has_many :roles
# has_many :actors, :through => roles

 belongs_to :task_haver
 belongs_to :student
 belongs_to :type_of_chore

#  validates :task_haver_full_name , :presence =>true
#  validates :description_of_chore, :presence => true
#  validates :ask_price, :presence => true, :numericality => true
#  validates :complete_by, :presence => true


  # validates :director_id, :presence => true, :numbericality => { only_integer => true }
  # :numericality => {only integer: true} is another argument for this
  # validates :year, :presence => true, numbericality: { only_integer: tr} :uniqueness = > true



end
