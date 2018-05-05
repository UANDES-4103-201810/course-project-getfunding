class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects, dependent: :destroy
  has_one :profile,  dependent: :destroy
  has_many :categories , dependent: :destroy
  has_many :user_buys_promises, dependent: :destroy
  has_many :user_funds_projects, dependent: :destroy
  has_one :wishlist, dependent: :destroy
end
