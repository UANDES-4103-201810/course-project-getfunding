class Promise < ApplicationRecord
  validates :value,  numericality: {:greater_than_or_equal_to => 0}
  validates :condition, length: {:minimum => 10}
  validates :buyer , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Error" }

end
