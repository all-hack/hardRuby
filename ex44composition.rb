# ex44: composition

class Other 
	
	def override()
		puts "OTHER override()"
	end

	def implicit()	
		puts "OTHER implicit()"
	end
	
	def altered()
		puts "OTHER altered()"
	end
end

class Child
	
	def initialize()
		@other = Other.new()
	end
	
	def implicit()
		@other.implicit()
	end
	
	def override()
		puts "Child override()"
	end

	def altered()
		puts "Child before other altered()"
		@other.altered()
		puts "Child after other altered()"
	end
end

son = Child.new()

son.implicit()
son.override()
son.altered()


module Another
	
	def override()
		puts "aOTHER override()"
	end
	
	def implicit()
		puts "aOTHER implicit()"
	end 
	
	def Another.altered()
		puts "aOTHER altered()"
	end
end

class Achild 
	include Another
	
	def override()
		puts "aCHILD override()"
	end

	def altered()
		puts "aCHILD before aother altered()"
		Another.altered()
		puts "aCHILD after another altered()"
	end
end

lay = Achild.new()

lay.implicit()
lay.override()
lay.altered()

