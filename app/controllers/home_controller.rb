class HomeController < ApplicationController
  def index
    @featured = Featured.all
    if user_signed_in?
    @user = User.where(id: current_user.id).first
      end
  end
end
