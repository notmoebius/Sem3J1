require 'pry'
require_relative 'event.rb'

class EventCreator

  def create_event
    puts "Salut, tu veux créer un événement ? Cool ! "
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    title = get.chomps
    puts "\nSuper. Quand aura-t-il lieu ?"
    print "> "
    start_date = Time.parse(get.chomps)

        
  end

    
end