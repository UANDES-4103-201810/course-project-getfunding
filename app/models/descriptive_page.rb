class DescriptivePage < ApplicationRecord
  belongs_to :Project
  validates :link, length: {:minimum => 3}
end
