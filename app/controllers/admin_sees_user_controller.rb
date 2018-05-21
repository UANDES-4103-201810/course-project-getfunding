class AdminSeesUserController < ApplicationController
  def index
    @users = User.all
    #@categories = Category.all
  end


  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
end
end
