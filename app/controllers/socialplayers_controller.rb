class SocialplayersController < ApplicationController
  def search
    @socialplayers = Socialplayer.new
  end

  def index
    @socialplayers = Socialplayer.all
  end

  def show
    @socialplayer = Socialplayer.find(params[:id])
    @tweets = Twitter.user_timeline(@socialplayer.screenname)
  end

  def save
    #@username
    @socialplayer = Socialplayer #Twitter.user_timeline(@username)
    socialplayer = Socialplayer.new
    socialplayer.id_str = @socialplayer.id_str
    socialplayer.name = @socialplayer.name
    socialplayer.screenname = @socialplayer.screenname
    socialplayer.des = @socialplayer.description
    socialplayer.save
    redirect_to user_favorite_path
  end

end

#Twitter.user_timeline(@username)
#Twitter.list_members(slug:'players', owner_screen_name:'mlb', cursor: l.next_cursor)


