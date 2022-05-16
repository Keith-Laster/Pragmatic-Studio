class Player
  attr_accessor :name
  attr_reader :health
 
  
  def initialize(name,health=100)
  @name = name.capitalize
  @health = health
end

def score
  @name.length + @health
end

def blam
  @health -= 10
  puts "#{@name} got blammed!"
end
def w00t
  @health +=15
  puts "#{@name} got w00ted!"
end
def to_s = "I'm #{@name} with a health of #{@health} and a score of #{score}."
end

player1= Player.new("moe")
player2= Player.new("lary",60)
player3= Player.new("curly",125)
player4= Player.new("Shemp", 90)
player5= Player.new("Bob")


players = [player1, player2, player3]
puts "There are #{players.size} players in the game:"
players.each do |player|
  puts player
end

players.each do |player|
  puts player.health
end

players.each do |player|
  player.w00t
  player.blam
  puts player
end

players.pop
players.push(player4)
puts players






