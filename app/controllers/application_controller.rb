class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  Rails.application.config.session_store :cookie_store, key: "current_user_id"



def current_user
  @_current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
end

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