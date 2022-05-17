name1 = "larry"
health1 = 60

name2 = "curly"
health2 = 125


puts "#{name1.capitalize} has a health of #{health1}"
puts "#{name2.upcase} has a health of #{health2}"


health2 = health1
puts "#{name2.upcase} has a health of #{health2}"

health1 = 30
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

name3 = "moe"
health3 = "100"
puts "#{name3.upcase} has a health of #{health3}".center(30, '*')

name4 = "shemp"
health4 = 90
puts "#{name4.capitalize.ljust(20, '.')} #{health4} health"

puts "\n"
puts "\n"
puts "----------------------------------------------"
puts "\n"

def say_hello(name, health=100)
  "I'm #{name.capitalize} with a health of #{health} as of #{time}."
end

def time
  current_time = Time.new
  current_time.strftime("%I:%M:%S")
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)


puts "\n"
puts "\n"
puts "----------------------------------------------"
puts "\n"


class Player
  attr_accessor :name
  attr_accessor :health
  
  def initialize(name,health=100)
    @name = name.capitalize
    @health = health
end
def to_s
  "I'm #{@name} with a health of #{@health}."
end
def blam
  @health -= 10
  puts "#{@name} just got blammed!"
end
def w00t
  @health += 15
  puts "#{@name} just got w00ted!"
end
end

class Game 
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players << a_player
  end
  
  def play
    "There are #{@players.size} players in Knuckleheads:"
    puts @players
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

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play
