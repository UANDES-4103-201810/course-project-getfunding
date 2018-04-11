class Promise < ApplicationRecord
  belongs_to :Proyect
  has_many :user_buys_promises
  validates :value,  numericality: {:greater_than_or_equal_to => 0}
  validates :condition, length: {:minimum => 10}
  
end