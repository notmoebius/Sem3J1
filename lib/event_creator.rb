require 'pry'
require_relative 'event.rb'

class EventCreator

  def initialize
    # Menu de saisie des infos event
    puts "Salut, tu veux créer un événement ? Cool ! "
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    @title = gets.chomp
    puts "\nSuper. Quand aura-t-il lieu (en aaaa-mm-jj hh:mm)?"
    print "> "
    @start_date = gets.chomp
    puts "\nAu top. Combien de temps en minutes va-t-il durer (en minutes) ?"
    print "> "
    @duration = gets.chomp.to_i
    puts "\nGénial. Qui va participer ? Balance leurs e-mails (séparés par des ;)"
    @participants = gets.chomp.split(';')
    @attendees = @participants.to_a

    # création de l'event et affichage du résultat
    event = Event.new(@start_date, @duration, @title,@attendees)
    puts event.to_s
    puts "Super, c'est noté, ton évènement a été créé !"
  end

end