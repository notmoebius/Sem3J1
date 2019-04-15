require 'pry'


# par terminé
class DateParser
  attr_accessor :date_parsed
    
  def initialize(string_to_parse)
      @date_parsed = string_to_parse
  end

  def parse_string_to_date
    @date_ary = @date_parsed.split(' ')
  binding.pry
  end
    
end