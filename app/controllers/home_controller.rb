class HomeController < ApplicationController
  def index
    @featured = Featured.all
  end
end
