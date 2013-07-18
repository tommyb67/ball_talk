class SessionController < ApplicationController
  def new
  end

  def landing_page
    @disable_nav = true
  end

  def create
    name = params[:name]
    password = params[:password]
    # authenticate a User
    user = User.authenticate(params[:user_name], params[:email])
    if user
      user[:user_id] = user.id
      redirect_to socialplayer_search
    else
      flash.now.alert = "Invalid username or password"
      render 'welcome'
    end
  end
end