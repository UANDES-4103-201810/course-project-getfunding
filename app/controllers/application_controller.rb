class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:index, :show]
  Rails.application.config.session_store :cookie_store, key: "current_user_id"
  Rails.application.config.session_store :cookie_store, key: "money"
  Rails.application.config.session_store :cookie_store, key: "current_project_id"
  Rails.application.config.session_store :cookie_store, key: "category"
  Rails.application.config.session_store :cookie_store, key: "money"
  Rails.application.config.session_store :cookie_store, key: "admin"
  Rails.application.config.session_store :cookie_store, key: "promise"
  Rails.application.config.session_store :cookie_store, key: "promise_value"
  Rails.application.config.session_store :cookie_store, key: "target"


@wishlist = Wishlist.all


  def is_user_logged_in?
    logged_in = false
    #complete this method
    #flash[:notice] = session[:current_user_id]
    flash[:notice] = current_user

    if current_user
      logged_in = true
    else
      logged_in = false
    end
    if logged_in  == true
      true
    else
      #redirect_to root_path
    end

  end

end