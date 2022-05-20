require_relative 'players'
require_relative 'die'
require_relative 'game_turn'

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
 
    puts "acoonamatada..."
  puts (@players)

 #not too clear on this yet
 #atlernative:
 #def add_player(a_player)
  # @players.push(a_player)
 #end
  def add_player(a_player)
    @players << a_player
    
  end
  
  def play(rounds)
    puts "There are #{@players.size} players in Knuckleheads:"
    @players.each do |player|
    puts player
  end
  
  1.upto(rounds) do |round|
    puts "\nRound #{round}:"
  @players.each do |player|
   GameTurn.take_turn(player)
   puts player
      end
    end
  end
  
  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end
  
  def print_stats
    strong_players = @players.select { |player| player.strong? }
    wimpy_players = @players.reject { |player| player.strong? }
  
    puts "\n#{@title} Statistics:"
  
    puts "\n#{strong_players.size} strong players:"
      strong_players.each do |player|
      puts "#{player.name} (#{player.health})"
      end
    
      puts "\n#{wimpy_players.size} wimpy players:"
      wimpy_players.each do |player|
      print_name_and_health(player)
      end
      
      puts "\n#{@title} High Scores:" 
      @players.sort.each do |player|
        formatted_name = player.name.ljust(20, '.')
        print_name_and_health(player)
      end
  end
end
