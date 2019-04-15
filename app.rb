require_relative 'lib/user.rb'
require_relative 'lib/event.rb'
require_relative 'lib/event_creator.rb'
require_relative 'lib/date_parser.rb'
require 'pry'

julie = User.new('julie@julie.com',23)
alec = User.new('alec@alec.com', 20)

puts "Liste d'utilisateurs : "
puts User.all

#event1 = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, alec]) # avec les objets user

# bonus: uncomment
e = EventCreator.new







