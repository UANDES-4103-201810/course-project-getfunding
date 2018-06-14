class UserdonationMailer < ApplicationMailer
  default from: 'felipewebtechnologies@gmail.com'

  def funding_email(user, user_funds_project)
    @user = user
    @user_funds_project = user_funds_project
    @url = "localhost:3000"
    mail(to: @user.email , subject: 'Thanks for your donation')
  end

end
