require 'pry'
require 'time'

class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration,title,attendees) 
        @start_date = start_date
        @duration = duration
        @title = title
        @attendees = attendees
    end


end
