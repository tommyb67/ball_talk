class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def favorite_show
    @socialplayer = Socialplayer.find(params[:id])

  end

end