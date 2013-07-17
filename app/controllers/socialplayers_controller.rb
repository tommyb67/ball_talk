class SocialplayersController < ApplicationController
  def search
    @socialplayers = Socialplayer.new
  end

  def show
    @socialplayers = Socialplayer.all
  end

  def save
    @socialplayer = Socialplayer
  end

end

#Twitter.user_timeline(@username)
#Twitter.list_members(slug:'players', owner_screen_name:'mlb', cursor: l.next_cursor)


