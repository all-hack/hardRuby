# ex39: Hashes, oh lovely hashes 

# create a mapping of state to abbreviation 
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

# create a basic set of states and some cities in them 
cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

# add some more cities 
cities ['NY'] = 'New York'
cities ['OR'] = 'Portland'

# puts out some cities 
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"


# puts some states 
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['FLorida']}"

# do it by using the state then cities hash
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation 
puts '-' * 10
# do end style
#states.each do |state, abbrev|
#	puts "#{state} is abbreviated #{abbrev}"
#end

# block style 
states.each {|state, abbrev| puts "#{state} is abbreviated #{abbrev}"}

# puts every city in state
puts '-' * 10 
# do end style 
#cities.each do |abbrev, city|
#	puts "#{abbrev} has the city #{city}"
#end 

# block style 
cities.each {|abbrev, city| puts "#{abbrev} has the city #{city}"}

# now do both at the same time 
puts '-' * 10 
states.each {|state, abbrev| city = cities[abbrev]; puts "#{state} is abbreviated #{abbrev} and has a city #{city}" } 


puts '-' * 10 
# by default ruby says "nil" when something isn't in there 
state = states['Texas']

if !state 
	puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"




