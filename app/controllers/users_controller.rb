class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def index
    @users = User.all
  end

  def add_favorite
    #@user = User.find(params[:user_id])
    if @current_user
      @current_user.favorites << Socialplayer.find(params[:player_id])
      @current_user.save
      redirect_to 'index'
    else
      redirect_to 'index'
    end
  end

  def favorite
    @socialplayer = Socialplayer.find(params[:id])\
  end
end