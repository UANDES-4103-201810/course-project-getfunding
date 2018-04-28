class User < ApplicationRecord
  has_one :profile
  has_many :user_funds_project
  has_many :user_buys_promises
  validates :email, uniqueness: true
  validates :email , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Error" }
  validates :password, length: {in: 6..12}
end
