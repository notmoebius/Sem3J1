require 'pry'
require 'time'

class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration,title,attendees) 
        @start_date = Time.parse(start_date)
        @duration = duration
        @title = title
        @attendees = attendees
    end

    def postpone_24h
        return @start_date = @start_date + (24 * 60 * 60) # ajoute 24h en seconde
    end

    def end_date
        return @start_date = @start_date + (duration * 60)
    end

    def is_past?
        if @start_date < Time.now 
            return true      # date est passée
        else 
            return false
        end
    end

    def is_future?
        if @start_date > Time.now 
            return true      # date est future
        else 
            return false
        end
    end

    def is_soon?
        diff = @start_date - Time.now
        if diff <= 1800
            return true
        else
            return false
        end    
    end

    def to_s
        puts ">Titre : #{@title}" 
        puts ">Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
        puts ">Durée : #{duration}"
        print ">Invités : "
        @attendees.each { | attendee | print "-> #{attendee.email} "}
    end

end
