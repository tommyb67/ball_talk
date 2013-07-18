class SessionsController < ApplicationController
  def new
  end

  # disable the rendering of the navbar on the login page
  def landing_page
    @disable_nav = true
  end

  def create
    # The following returns a user
    user = User.authenticate(params[:user_name], params[:email])
    if user
      # This is if login worked
      # Stores the user_id in a cookie!!!!!! This is your wristband for the club
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in"
    else
      # This is if login didn't work
      flash.now.alert = "Invalid username or email"
      render "socialplayer_search"
    end
  end

  # Logs you out
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end