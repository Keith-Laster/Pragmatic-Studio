#!/usr/bin/env ruby

require_relative '../lib/studio_game/players'
require_relative '../lib/studio_game/game'
require_relative '../lib/studio_game/clumsy_player'
require_relative '../lib/studio_game/berserk_player'

module StudioGame

player1= Player.new("moe")
player2= Player.new("lary",60)
player3= Player.new("curly",125)
klutz = ClumsyPlayer.new("klutz", 105)
berserker = BerserkPlayer.new("berserker", 50)

knuckleheads = StudioGame::Game.new("Knuckleheads")
default_player_file = File.join(File.dirname(__FILE__), 'players.csv')
knuckleheads.load_players(ARGV.shift || default_player_file)
knuckleheads.add_player(klutz)
knuckleheads.add_player(berserker)
#knuckleheads.add_player(player1)
#knuckleheads.add_player(player2)
#knuckleheads.add_player(player3)
knuckleheads.play(3)
knuckleheads.print_stats

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

knuckleheads.save_high_scores

 
end




 
  
