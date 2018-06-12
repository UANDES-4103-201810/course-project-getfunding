class AdminSeesUserController < ApplicationController
  def index
    @users = User.all
    #@categories = Category.all

  end






    def make_admin

      @user = User.find_by(id: params[:id])
      if @user.admin == false || @user.admin == nil
        @user.admin = true
      else
        @user.admin = nil
      end
        @user.save
      redirect_to admin_sees_user_index_path

    end

end
