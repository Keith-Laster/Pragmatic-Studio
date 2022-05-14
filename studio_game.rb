name1 = "larry"
health1 = 60
puts "#{name1}'s health is #{health1 * 3}"
puts "#{name1}'s health is #{health1 / 9.0}"
puts "#{name1}'s health is #{health1 / 9}"

puts "Players: \n\tlarry\n\tcurly\n\tmoe"

name2 = "curly"
health2 = 125
name3 = "moe"
health3 = 100
puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"


puts "#{name1.capitalize}'s health is #{health1}"
puts "#{name2.upcase} has a health of #{health2}"


health2 = health1
puts "#{name2.upcase} has a health of #{health2}"

health1 = 30
puts "#{name1.capitalize} has a health of #{health1}"
puts "#{name2.upcase} has a health of #{health2}"
puts "#{name3.capitalize} has a health of #{health3}"

text = "#{name3.capitalize} has a health of #{health3}"
puts text.center(40,'*')

name4 = "shemp"
health4 = 90
formatted_name = name4.capitalize.ljust(30,'.')
puts "#{formatted_name} #{health4} health"

game_start = Time.new
game_start_formatted = game_start.strftime("%A %m/%d/%y at %I:%M%p")
puts "The game started on #{game_start_formatted}"




