class Featured < ApplicationRecord
  belongs_to :Project
  validates :Project_id, uniqueness: true
end
