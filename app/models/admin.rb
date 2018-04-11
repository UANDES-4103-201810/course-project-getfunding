class Admin < ApplicationRecord
  belongs_to :User
  has_many :admin_administrate_proyects
  validates :user , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Error" }

end
