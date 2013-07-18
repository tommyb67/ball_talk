namespace :players do
  desc "Gets Players"
  task :get => :environment do
    # Anything that goes in here, can be run with
    # rake tweets:get
    players = []

    cursor = nil
    begin
      response = Twitter.list_members(slug:'players', owner_screen_name:'mlb', cursor: cursor)
      players << response.users
      cursor = response.next_cursor
    end while not cursor.nil?
    players.flatten!
    binding.pry

    l.each do |user|
      sp = Socialplayer.new
      sp.id_str = user[:id_str]
      sp.name = user[:name]
      sp.screenname = user[:screen_name]
      sp.description = user[:description]
      sp.save
  end


  end
end