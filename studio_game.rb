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


player1= Player.new("moe")
player2= Player.new("lary",60)
player3= Player.new("curly",125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play

player1c= Player.new("Alvin")
player2c= Player.new("Simon",60)
player3c= Player.new("Theodore",125)

chipmunks = Game.new("Chipmunks")
chipmunks.add_player(player1c)
chipmunks.add_player(player2c)
chipmunks.add_player(player1c)
chipmunks.play


