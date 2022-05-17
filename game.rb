require_relative 'players'

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
 
 #not too clear on this yet
 #atlernative:
 #def add_player(a_player)
  # @players.push(a_player)
 #end
  def add_player(a_player)
    @players << a_player
  end
  
  def play
    puts "There are #{@players.size} players in Knuckleheads:"
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      player.w00t
      player.w00t
      player.blam
      puts player
    end
  end
end
