class CallbacksController < ApplicationController

  def omniauth_auth
    puts "hola"
    puts request.env[ 'omniauth.auth' ]
    @user = User.from_omniauth(request.env[ 'omniauth.auth' ] )
    sign_in_and_redirect @user
  end

end
