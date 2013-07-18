l.each do |l|
  l.id_str
  l.name
  l.screen_name
  l.description
  while l.next_cursor != nil
  end
end

@allplayers = {}

l.each do |l|
  [:id_str, :name, :screen_name, :description]
  while l.next_cursor != nil
  end
end


l.all.first.attrs[:name]

l.each do |user|
   puts user.attrs[:name]
 end


sp = Socialplayer = [id_str: , name: , screenname: , description: ]





