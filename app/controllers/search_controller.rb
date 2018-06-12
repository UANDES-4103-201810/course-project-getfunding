class SearchController < ApplicationController


def index
  @projects = Project.where("name LIKE ?", "%#{params[:name]}%"  )

end


  def search_params
    params.require(:project).permit(:name)
  end

end
