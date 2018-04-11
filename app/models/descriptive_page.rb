class DescriptivePage < ApplicationRecord
  validates :link, length: {:minimum => 3}
end
