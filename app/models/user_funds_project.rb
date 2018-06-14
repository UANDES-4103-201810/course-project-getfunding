class UserFundsProject < ApplicationRecord
  belongs_to :User
  belongs_to :Project

  before_create :confirmation_token

  def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end

  def confirm
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end

end
