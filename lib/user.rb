require 'pry'

class User
  attr_writer :visa
  attr_reader :birthdate
  attr_accessor :email
  @@user_count = 0


  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end

  def read_visa
    return @visa
  end

  def initialize(email_to_save)
    if check_email(email_to_save) # on vérifie l’e-mail proposé via une méthode check_email (cf plus bas)
      @email = email_to_save #si l’e-mail passe le check => on le sauve dans l'instance
      @@user_count = @@user_count + 1
      puts "On envoie un email de Bienvenue !!" 
    else
      puts "ERREUR ! EMAIL FOIREUX. Recommence" #si l’e-mail ne passe pas le check => message d'erreur
    end
  end

  def check_email(email_to_save)
    retunr true
  end

  def self.count
    return @@user_count
  end

  def greet
    puts "Bonjour le Monde!"
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def show_itself
    print "Voici l'instance : "
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    puts @email
  end

  private

  def encrypt(string_to_encrypt)
    return "##ENCRYPTED##"
  end

end


binding.pry
puts "EOF"
