# Create the Dog class in your text editor as it’s been presented 
# in the video. What happens if you eliminate the return keyword 
# from the name, breed, and age methods? That is, what would happen if 
# the name method looked like this:

# def name
#     @dogs_name
# end

class DogOG

	def set_name(text)
		@dogs_name = text
	end

	def name 
		# return @dogs_name
		@dogs_name
	end

	def set_breed(text)
		@dogs_breed = text
	end

	def breed
		return @dogs_breed
	end

	def set_age(number)
		@dogs_age = number
	end

	def age
		return @dogs_age
	end
end

class DogIdiomatic

	def name=(text)
		@name = text
	end

	def name 
		# return @dogs_name
		@name
	end

	def breed=(text)
		@breed = text
	end

	def breed
		return @breed
	end

	def age=(number)
		@age = number
	end

	def age
		return @age
	end
end

class DogIdeal
	attr_accessor :name, :breed, :age
end

DogStruct = Struct.new(:name,:breed,:age) do 
	def to_s
		"Name: #{name}, Breed: #{breed}, Age: #{age}"
	end
end

fido = DogIdeal.new
fido.name="Fido"
puts fido.name

brownie = DogStruct.new("Brownie","Pomeranian",12)
puts brownie

answer = 
<<-EOF
When the "return" keyword is removed from the getter method, 
there is no functional change in the class method.
This is because the Ruby Interpreter automatically assumes any value identified 
as the last evaluated expression at the end of the method is returned by the method.
EOF

puts answer