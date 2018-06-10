class SearchController < ApplicationController


def index
  @projects = Project.where(name: search_params)

end


  def search_params
    params.require(:q).permit(:name)
  end

end
