# ex44: inheritance versus composition

# When to use ingeritance or composition 
## Avoid something called "meta-programming" at all costs, as it is too complex to be useful reliably. If you're stuck with it, then be prepared to know the class hierarchy and spend time determining where everything is coming from.
## Use composition to package up code into modules that are used in many different unrelated places and situations 
## Use inheritance only when there are clearly related resuable pieces of code that fir under a single common concept or if you have to because of something you're using.


# parent and child classes can interact in three ways 
## Actions on the child imply an action on the parent
## Actions on the child override the action on the parent
## Action on the child alter the action on the parent

# Implicit Inheritance
class ParentA
	
	def implicit()
		puts "aPARENT implicit()"
	end
end

class ChildA < ParentA
end

adad = ParentA.new()
ason = ChildA.new()

adad.implicit()
ason.implicit()


# Override Explicitly
class ParentB
	
	def override()
		puts "bPARRENT override()"
	end
end

class ChildB < ParentB
	def override()
		puts "bCHILD override()"
	end
end

bdad = ParentB.new()
bson = ChildB.new()

bdad.override()
bson.override()

# Alter before or after 
class ParentC
	def altered()
		puts "cPARENT altered()"
	end
end

class ChildC < ParentC
	def altered()
		puts "cChild, before parent altered()"
		super()
		puts "Child, after parent altered()"
	end
end

cdad = ParentC.new()
cson = ChildC.new()

cdad.altered()
cson.altered()

# all three combined 
class ParentD
	
	def jam()
		puts "dPARENT ovveride()"
	end
	
	def jim()
		puts "dPARENT implicit()"
	end
	
	def jom()
		puts "dParent altered()"
	end
end

class ChildD < ParentD

	def jam()
		puts "dCHIlD override()"
	end
	
	def jom()
		puts "dCHILD, before parent altered()"
		super()
		puts "dCHILD, after parent altered()"
	end
end

nam = ParentD.new()
nom = ChildD.new()

nam.jim()
nom.jim()

nam.jam()
nom.jam()

nam.jom()
nom.jom()


