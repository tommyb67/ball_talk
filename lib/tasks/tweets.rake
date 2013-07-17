namespace :tweets do
  desc "Gets Tweets"
  task :get => :environment do
    # Anything that goes in here, can be run with
    # rake tweets:get

    l = Twitter.list_members(slug:'players', owner_screen_name:'mlb') #, cursor: l.next_cursor)

    binding.pry
  end

end
