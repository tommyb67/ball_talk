require_relative '../config/environment.rb'



l = Twitter.list_members(slug:'players', owner_screen_name:'mlb', cursor: l.next_cursor)

binding.pry
