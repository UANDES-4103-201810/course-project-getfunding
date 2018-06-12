class AdminSeesUserController < ApplicationController
  def index
    @users = User.all
    #@categories = Category.all

  end



    def make_admin
      @user = User.find_by(id: params[:id])
      if @user.admin == false || @user.admin == nil
        @user.admin = true
        flash[:notice ]= 'New admin added'
      else
        @user.admin = nil
        flash[:notice ]= 'Admin eliminated'
      end
        @user.save
      redirect_to admin_sees_user_index_path

    end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }

    end
    end

end
