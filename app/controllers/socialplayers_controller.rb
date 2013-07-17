class SocialplayersController < ApplicationController
  def search
    @socialplayer = Socialplayer.new
   # Twitter.user_timeline(@username)
  end

  def show
  end
end
