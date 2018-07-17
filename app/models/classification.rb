class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    where()
  end

  def self.longest
    Classification.joins(:boats).group('classification_id').order('boat.length DESC').limit(1)
  end
end
