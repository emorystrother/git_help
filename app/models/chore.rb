class Chore < ActiveRecord::Base
# belongs_to :director
# has_many :roles
# has_many :actors, :through => roles

  validates(:type_of_chore_id, { presence => true })
  # validates :director_id, :presence => true, :numbericality => { only_integer => true }
  # :numericality => {only integer: true} is another argument for this
  # validates :year, :presence => true, numbericality: { only_integer: tr} :uniqueness = > true
end
