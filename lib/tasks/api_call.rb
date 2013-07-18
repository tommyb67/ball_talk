html: {class: 'form-horizontal'}



l.all.first.attrs[:name]

l.each do |user|
   puts user.attrs[:name]
 end


sp = Socialplayer = [id_str: , name: , screenname: , description: ]


l.each do |user|
sp = Socialplayer.new
sp.id_str = user[:id_str]
sp.name = user[:name]
sp.screenname = user[:screen_name]
sp.description = user[:description]
sp.save
end


<%= link_to("My Favortie Players", user_favorite_path) %>






