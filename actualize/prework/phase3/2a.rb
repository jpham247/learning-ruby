# Add the following methods to your Calculator class:
# multiply - returns the product of two numbers
# divide - returns the quotient of two numbers
# average - this method will accept 3 numbers as parameters and return the average. 
# (The average would be the sum of the 3 numbers divided by 3.)


class Calculator
	def double(number)
		return number+number
	end

	def square(number)
		return number*number
	end

	def multiply(first_number,second_number)
		return first_number * second_number
	end

	def divide(dividend,divisor)
		quotient = dividend / divisor
		return quotient
	end

	def average(first_number,second_number,third_number)
		sum = first_number + second_number + third_number
		return sum/3
	end
end

calc = Calculator.new
product = calc.multiply(3,5)
puts "Lets test multiply(3,5) == #{product}"
quotient = calc.divide(27,9)
puts "Lets test divide(27,9 == #{quotient}"
average = calc.average(5,10,15)
puts "Let's test average(5,10,15) == #{average}"
