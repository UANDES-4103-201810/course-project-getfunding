class Admin < ApplicationRecord
  belongs_to :User
  has_many :admin_administrate_proyects
  validates :User_id, uniqueness: true
end
