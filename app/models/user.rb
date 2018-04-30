class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects
  has_one :profile
  has_many :categories
  has_many :user_buys_promises
  has_many :user_funds_projects
  has_one :wishlist
end
