


class Baller
  def initialize(name,goatpts)
    @name = name
    @goatpts = goatpts
  end
  
  def naty
   @goatpts += 100
   puts "#{@name} just got goated"
 end
 
 def no_playoffs
   @goatpts -=45 
 end
 
 def hello_people
  puts "I'm #{@name} and I have #{@goatpts} goat pts."
end
def kinged
  if @goatpts > 100 
  puts "#{name.upcase} has just been kinged!"
end
end
end

balla1= Baller.new("Michael",80)
balla1.naty
balla1.no_playoffs
puts balla1.hello_people
puts balla1.kinged


