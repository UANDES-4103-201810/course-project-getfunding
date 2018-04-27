class SessionsController < ApplicationController
  def new
  end


  def create
    if user = User.authenticate(params[:email], params[:password])
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url
    end

    if is_user_logged_in? == true
      #redirect_to users_url

    else
      #redirect_to root_path

    end

  end



end


def session_params
  params.require(:sessions).permit(:email, :password)
end