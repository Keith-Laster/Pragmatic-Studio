require_relative 'players'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
 
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
  
 treasures = TreasureTrove::TREASURES
 puts "\nThere are #{treasures.size} treasures to be found:"
 treasures.each do |treasure|
   puts "A #{treasure.name} is worth #{treasure.points} points"
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
      
      @players.each do |player|
        puts "\n#{player.name}'s point totals:"
        player.each_found_treasure do |treasure|
          puts "#{player.points} total #{treasure.name} points"
          end
       puts "#{player.points} grand total points"
   end
  end
end
