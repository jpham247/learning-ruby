# Recreate the dog class and add the name method with all of the 
# random side effects we put in. What happens if you switch the 
# order of the lines, and put return “Fido” first, and all the 
# other side effects afterwards? Why do you think this is?

class Dog
	def name
		return "Fido"
		puts "The name method has been called"
		x = 1
		y = 2
		z = x + y
		puts z
		# return "Fido"
	end

	def breed 
		return "Dalmatian"
	end

	def age
		return 3
	end
end

fido = Dog.new
puts fido.name

answer = <<-EOF
If you switch the order of the lines the random side effects are not executed as 
methods end as soon return keyword provides the value indicated to its caller.
Thus anything after "return" is not executed.
EOF

puts answer

