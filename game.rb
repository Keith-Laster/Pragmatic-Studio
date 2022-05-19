require_relative 'players'
require_relative 'die'

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
      die = Die.new
      case die.roll
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} was skipped."
      else player.w00t
      end
      puts player
    end
  end
end
