require_relative 'lib/user.rb'
require_relative 'lib/event.rb'
require_relative 'lib/event_creator.rb'
require 'pry'

julie = User.new('julie@julie.com',23)
alec = User.new('alec@alec.com', 20)

puts "Liste d'utilisateurs : "
puts User.all

event = Event.new("2019-01-06 14:00", 30, "standup quotidien",["truc@machin.com", "bidule@chose.fr"])
puts event.to_s






