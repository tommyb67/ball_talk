# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# write db:seed to import all player's name and id
# everytime someone searches a name, grab the id and ask twitter about it

# delete all current records

User.delete_all
Socialplayer.delete_all
Favorite.delete_all

u1 = User.create(user_name: "tommyboy", password: "bottleofrum", email: "tboy@gmail.com")
u2 = User.create(user_name: "johnnyboy", password: "bottleofcoke", email: "jboy@gmail.com")
u3 = User.create(user_name: "debbiegirl", password: "bottleofmilk", email: "dgirl@gmail.com")

sp1 = Socialplayer.create(id_str: "1574282544", name: "Scott Rice", screenname: "ScottRice56", description: "This is the official twitter account for @MLB pitcher @ScottRice56 of the @Mets. #ElArroz")
sp2 = Socialplayer.create(id_str: "1202941207", name: "Wil Nieves", screenname: "WilNieves27", description: "Catcher of the Arizona D-Backs / Puertorriqueño")
sp1 = Socialplayer.create(id_str: "1195683247", name: "Dustin Pedroia", screenname: "15Lasershow", description: "Red Sox 2nd baseman.")





