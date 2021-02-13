Team.destroy_all
Athlete.destroy_all
Coach.destroy_all
Mascot.destroy_all
FanClub.destroy_all

rockets = Team.create(color:"red", name:"rockets", city:'Houston')
lakers = Team.create(color: "yellow", name:"Lakers", city: "L.A")
wizards = Team.create(color: "red/blue", name:"Wizards", city: "D.C")
heat = Team.create(color: "red/black", name:"Heat", city: "Miami")
spurs = Team.create(color: "White", name:"Spurs", city: "San Antonio")


lebron = Athlete.create(team_id:1, name:"Lebron James", position:"Small Forward", jersey:23, height:140, years_of_experience:16, championships:3)
curry = Athlete.create(team_id:2, name:"Stephen Curry", position:"Shooting Guard", jersey:9, height:126, years_of_experience:11, championships:3)
harden = Athlete.create(team_id:3, name:"James Harden", position:"Point Guard", jersey:9, height:123, years_of_experience:11, championships:0)
durant = Athlete.create(team_id:4, name:"Kevin Durant", position:"Small Forward", jersey:12, height:130, years_of_experience:11, championships:1)
rondo = Athlete.create(team_id:Team.all.fifth.id, name:"Rojon Rondo", position:"Point Guard", jersey:7, height:120, years_of_experience:10, championships:3)
howard = Athlete.create(team_id:Team.all.fifth.id, name:"Dwight Howard", position:"Center", jersey:6, height:150, years_of_experience:14, championships:2)


gregg_pop = Coach.create(team_id: 1, name:"Gregg Pop", age: 56, bio:"A great coach who has put the Spurs on the map", championships: 5, years_of_experience: 20)
doc_rivers = Coach.create(team_id: Team.all.second.id, name:"Doc", age: 51, bio:"his son is better", championships: 1, years_of_experience: 12)
rick_carlisle = Coach.create(team_id: Team.all.third.id, name:"Rick", age: 57, bio:"terible player, great coach", championships: 2, years_of_experience: 5)
erik = Coach.create(team_id: Team.all.fourth.id, name:"Erik", age: 45, bio:"Heats legend", championships: 10, years_of_experience: 12)
mike  = Coach.create(team_id: Team.all.fifth.id, name:"Mike", age: 23, bio:"no idea who he is ", championships: 3, years_of_experience: 2)



clutch = Mascot.create(team_id:1, name:"Clutch", character:'bear', bio:'A fat bear that hits clutch 3s')
windy = Mascot.create(team_id:Team.2, name:"Windy", character:'bull', bio:'A bull')
kitty = Mascot.create(team_id:Team.3, name:"Kitty", character:'cat', bio:'A cat')
dog = Mascot.create(team_id:Team.4, name:"Dog", character:'dog', bio:'A dog')
wolf = Mascot.create(team_id:5, name:"Wolf", character:'wolf', bio:'A wolf')



houston_wives = FanClub.create(team_id:1, name:"wives fan club", location: "John Wall's house")
ucla = FanClub.create(team_id:2, name:"UCLA club", location: "Kap Sig frat house")
browns_squad = FanClub.create(team_id:3, name:"Cavaliers who?", location: "OBJ's house")
lonely_fans = FanClub.create(team_id:4, name:"lonely people fan club", location: "Speak easy on Main St.")
spur_fans = FanClub.create(team_id:5, name:"Bar", location: "Bar on Fifth Ave.")