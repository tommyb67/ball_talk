class SessionsController < ApplicationController
  def new
  end

  def create
    # The following returns a user
    user = User.authenticate(params[:email], params[:password])
    if user
      # This is if login worked
      # Stores the user_id in a cookie!!!!!! This is your wristband for the club
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!!!"
    else
      # This is if login didn't work
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end