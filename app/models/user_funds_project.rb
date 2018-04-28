class UserFundsProject < ApplicationRecord
  belongs_to :User
  belongs_to :Project
end
