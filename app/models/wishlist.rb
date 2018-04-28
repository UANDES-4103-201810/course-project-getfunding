class Wishlist < ApplicationRecord
  belongs_to :User
  belongs_to :Project
end
