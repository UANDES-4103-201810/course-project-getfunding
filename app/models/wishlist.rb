class Wishlist < ApplicationRecord
  belongs_to :User
  belongs_to :Project
  validates :Project_id, uniqueness: true
end
