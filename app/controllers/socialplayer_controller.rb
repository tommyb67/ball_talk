class SocialPlayer < ActionController
  def index
    @socialplayers = SocialPlayer.new
  end

  def search
    @tweets = Twitter.user_timeline('username')
  end
end
