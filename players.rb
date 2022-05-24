class Player
  attr_accessor :name
  attr_reader :health
 
  def initialize(name,health=100)
  @name = name.capitalize
  @health = health
  @found_treasures = Hash.new(0)
end


def <=>(other)
  other.score <=> score
end

def strong?
  @health > 100
end

def score
  @health + points
end

def blam
  @health -= 10
  puts "#{@name} got blammed!"
end
def w00t
  @health +=15
  puts "#{@name} got w00ted!"
end

def to_s = "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}."
  
  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    
    puts "\n#{@name}'s treasures: #{@found_treasures}"
  end
  
  def points
    @found_treasures.values.reduce(0, :+)
  end
end


if __FILE__ == $0
player = Player.new("moe")
puts player.name
puts player.health
player.w00t
puts player.health
player.blam
puts player.health
end