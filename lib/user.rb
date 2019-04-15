require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
      @email = email_to_save # si l’e-mail passe le check => on le sauve dans l'instance
      @age = age_to_save
      @@all_users << self.email

  end

  def self.all
    puts @@all_users
  end

end

