def function(arg)
  return arg
end

def mathFunctions(first,second)
  result = first + second
  put "Addition Result : #{result}"

  result = first * second
  put "Multiplication Result : #{result}"

  result = first / second
  put "Quotient Result : #{result}"

  result = first % second
  put "Modulus Result : #{result}"

  result = first ** second
  put "Expondent Result : #{result}"

  # Ruby interpolates floats vs integers by the input given.
  return result
end

def stringFunctions()
  puts "get Input : "
  input = gets
  result = input.chomp
  puts "Capitalized Input (#{result}) : #{result.upcase}"
  puts "ToLower Input (#{result}) : #{result.downcase}"
  puts "Reversed Input (#{result}) : #{result.reverse}"

  # Must use "" if you want to interpolate variables.
  # Use '' if you do not want interpolation
  # Also %Q(<text>) || <--STRING <text> STRING allows String Designation
  # %W also used to allow interpolation
  
  text = %Q(This is text)
  puts text
  result.downcase! # Write result to variable value with !

  return result
end

def operators()
  int = 0
  #In Place Addition to variable
  int += 2
  put int
  # in place substraction from variable
  int -= 1
  put int
  # in place multiplcation of variable
  int *= 10
  put int
  # in place division of variable
  int /= 2
  put int
  # in place setting of variable to remainder of division
  int %= 2
  put int
  # in place int^2
  int **= 2
  put int
end

def control_structures()
  # Use Equality Operators with Control Structures
  # > < <= >= == !=

  # IF / ELSIF / ELSE
  if ( 0 < guess && guess < 75 )
    puts "Something Good is Coming your Way!"
  elsif ( guess >= 75 )
    puts "It's going to rain tomorrow."
  else
    puts "Better get your affairs in order."
  end

  # Case Statements
  answer = "yes"
  case answer
    when "answer"
      puts "yay"
    when "hey"
      puts "nay"
    else
      puts "ney"
  end
end
