class UserProjectsController < ApplicationController
  def index
    @projects = Project.where(User_id: current_user.id)
  end

end
