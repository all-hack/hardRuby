# ex11: Asking Questions
## gets grabs a line of user input including a linebreak
## .chomp trims the trailing line break out of the user input


print "How old are you? " 
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

