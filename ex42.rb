# ex42: Is-A, Has-A, Objects, and Classes

## Animal is-a object look at the extra credit 

class Animal
end

## ?? 
class Dog < Animal 
	
	def initialize(name)
		## ??
		@name = name
	end
end

## ??
class Cat < Animal
	
	def initialize(name)
		## ??
		@name = name
	end
end

## ?? 
class Person
	
	def initialize(name)
		## ??
		@name = name
		
		## person has-a pet of some kind
		@per = nil
	end
	
	attr_accessor :pet
end

## ??
class Employee < Person

	def initialize(name, salary)
		## ?? hmmm what is this strange magic?
		super(name)
		## ??
		@salary = salary 
	end
end

## ?? 
class Fish 
end

## ?? 
class Salmon < Fish
end

## ?? 
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## ?? 
satan = Cat.new("Satan")

## ?? 
mary = Person.new("Mary")

## ?? 
mary.pet = satan 

## ?? 
frank = Employee.new("Frank", 120000)

## ?? 
frank.pet = rover

## ?? 
flipper = Fish.new()

## ?? 
crouse = Salmon.new()

## ??
harry = Halibut.new()

