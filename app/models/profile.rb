class Profile < ApplicationRecord
  validates :age,  numericality: {:greater_than_or_equal_to => 0}
  validates :name, length: {in: 2..20}
  validates :nacionality, length: {in: 2..20}
  before_save do sex_validation end
end

def sex_validation
  if sex != "Male"
    if sex != "Female"
      puts("invalid")
      throw :abort
    end
  end
end