# ex37: Symbol Review

learnrubythehardway.org/book/ex37.html

BEGIN, run this block when the script starts, BEGIN { puts "hi" }
END, run this block when the script is done, END { puts "hi" }
alias, create another name for a function, alias X Y 
and, logical and, but lower priority than &&, puts "hello" and "Goodbye"
begin, start a block, usually for expceptions, begin end
break, break out of a loop right now, while true; break; end
case, case style conditional, like an if, case X; when Y; else; end
def, define a new function, def X(); end
defined?, is this class/function/etc. defined already?, defined? Class == "constant"
do, create a block that maybe takes a parameter, (0..5).each do |x| puts x end
else, else conditional, if X; else; end
elsif, else if conditional, if X; elsif Y; else; end
end, ends blocks, functions, classes, everything, begin end # many others 
ensure, run this code whether an exception happens or not, begin ensure end
for, for loop syntax. the .each syntax is preferred, for X in Y; end
if, if conditional, if X; end
in, in part of of for loops, for X in Y; end
module, Define a new module, module X; end
next, skip to the next element of a .each iterator, (0..5).each{|y| next}
not, logical not. but use ! instead, not true == false
or, logical or, puts "hello" or "goodbye"
redo, rerun a code block exactly the same, (0..5).each{|i| redo if i > 2}
rescue, run this code if an exception happens, begin rescure X; end
retry, in a rescue clause, says to try the block again, (0..5).each{|i| retry if i > 2|
return, returns a value from a function. mostly optional, return X
self, The curren object, class, or module, defined? self == "self"
super, the parent class of this class, super 
then, can be used with if optionally, if true then puts "hi" end
undef, remove a function definition from a class, undef X
unless, inverse of if, unless false then puts "not" end
until, inverse of while, execute block as long as false, until false;end 
when, part of case conditionals, case X; when Y; else; end
yield, pause and transfer control to the code block, yield 
