class UserBuysPromise < ApplicationRecord
  belongs_to :User
  belongs_to :Promise
end
