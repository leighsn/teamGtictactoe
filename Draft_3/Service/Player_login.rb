require 'pry'
class Player_login
  attr_reader :all_players
  @@all_players = []
  def initialize(all_players)
    @all_players = all_players
  end

  def login
     player_name = enter_name
     player = Player.new(player_name)
     player.new?
    #table of contents for log in
  end
  def enter_name
    puts "What is your name?"
    name = gets.chomp
  end
  def new?
    if @all_players.include?(self.name)
      puts "Welcome back."
    else
      @@all_players << self
    end
  end
 



end
login 