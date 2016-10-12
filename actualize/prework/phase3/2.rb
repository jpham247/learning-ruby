# Exercise 1
# Recreate this Calculator class in your own text editor and try passing 
# in a string as an argument to the double method instead of an actual number. 
# What happens and why?

class Calculator
	def double(number)
		return number+number
	end
end

calc = Calculator.new
puts calc.double("50")

answer = <<-EOF
When a string is passed into the Calculator::double() method, it returns
a concatenation of the string passed in with itself rather than a doubled number.

This is because the "+" operator used has different behavior depending on the type being operated on.
EOF

puts answer

# Exercise 2
# Add a method to the Calculator class that will return the square of any number.

class Calculator
	def double(number)
		return number+number
	end

	def square(number)
		return number*number
	end
end

# Exercise 3
# Create a new class called StringModifier. 
# Then, add a method to the StringModifier class called “make_uppercase” 
# that will accept a string as a parameter and return a new string that is an all uppercase version of the original string.

class StringModifier
	def make_uppercase(string)
		return string.upcase
	end
end

test_modifier = StringModifier.new
puts test_modifier.make_uppercase("hello!")