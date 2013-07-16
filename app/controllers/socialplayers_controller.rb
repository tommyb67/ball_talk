class SocialplayersController < ApplicationController
  def search
    @name

    Twitter.user_timeline(@username)
  end

  def show
  end
end
