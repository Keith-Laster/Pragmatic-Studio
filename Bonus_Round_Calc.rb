


class Baller
  
  
  def initialize(name,goatpts=60)
    @name = name
    @goatpts = goatpts
  end
  
  attr_accessor :name
  
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
end

balla1= Baller.new("Michael",80)
balla2= Baller.new("Lebron",80)
balla3= Baller.new("Kobe",70)
balla4= Baller.new("Wilt")



balla1.naty
balla1.no_playoffs
puts balla1.hello_people

ballers = [balla1, balla2, balla3]

ballers.push(balla4)

ballers.each do |balla|
  balla.naty
  puts balla.hello_people
end


puts "There are #{ballers.size} ballers on the court."

ballers.shuffle 
puts "#{ballers[0].name}"




end





  
