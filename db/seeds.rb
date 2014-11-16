# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
aleticomadrid = Club.create! :name => 'Aletico Madrid', :year => '1903'
bilbao_history = History.create! :name => "La Liga", :year => "1978, 1999, 2005, 2008, 2009", :club => aleticomadrid
player1 = Player.create! :name => 'Miguel Angel Moya Rumbo', :leg => 'Phải', :club => aleticomadrid