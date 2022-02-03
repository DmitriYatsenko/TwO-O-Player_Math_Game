require "pry"
class Player
  @@number_of_players = 0

  attr_reader :lives, :short, :long

  def initialize
    @@number_of_players +=1
    self.short = "P#{@@number_of_players}"
    self.long = "Player#{@@number_of_players}"
    self.lives = 3
  end 

  def loose_points
    self.lives -= 1
  end

  def final_lives
    "#{lives}/3"
  end

  protected
  attr_writer :lives, :short, :long
end