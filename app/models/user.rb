class User < ApplicationRecord
  has_one :profile
  has_one :admin
  has_many :user_funds_proyects
  has_many :user_buys_promises

  validates :email , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Error" }
  validates :password, length: {in: 6..12}
  before_save do type end

end

def type
  if user_type != "admin"
    if user_type != "normal"
      puts("invalid")
      throw :abort
    end
  end
end

