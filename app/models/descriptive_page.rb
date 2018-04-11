class DescriptivePage < ApplicationRecord
  belongs_to :Proyect
  validates :link, length: {:minimum => 3}
end
