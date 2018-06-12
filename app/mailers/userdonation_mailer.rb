class UserdonationMailer < ApplicationMailer
  default from: 'felipewebtechnologies@gmail.com'

  def funding_email(user)
    @user = user
    @url = "localhost:3000"
    mail(to: @user.email , subject: 'Thanks for your donation')
  end

end
