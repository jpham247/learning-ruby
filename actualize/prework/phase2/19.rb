# Exercise 19

# Common Methods
def run_program(exercise_num,program_num, &block)
  #Indicate Programs to Run
  run_these=[1,2,3,4,5,6]
  #########################
  if (run_these.include?(program_num))
    puts "Exercise #{exercise_num} :: Program #{program_num}"
    puts "-" * 40
    yield if block_given?
    puts "-" * 16 + "END" + "-" * 16
  end
end

# Program 1
# Start your program with this line of code:
# letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# The rest of your program should print out every other letter. That is, the result in your terminal should be:
# a
# c
# e
# g
# i
run_program(19,1) do
  letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  index = 0
  letters.each do |letter|
    puts letter if !index.odd?
    index += 1
  end
end

# Program 2
# Start your program with this line of code:
# letters = [["a", "b"], ["c", "d"], ["e", "f"], ["g", "h"], ["i", "j"]]
# The rest of your program should print out the second letter from each inner array. That is, the result in your
# terminal should be:
# b
# d
# f
# h
# j
run_program(19,2) do
  letters = [["a", "b"], ["c", "d"], ["e", "f"], ["g", "h"], ["i", "j"]]
  letters.each do |set|
    puts set[1]
  end
end

# Program 3
# Start your program with this line of code: numbers = [2, 25, 35, 5, 8, 13, 23] The rest of your program should create
# and print out an array that only contains numbers less than 10.
run_program(19,3) do
  numbers = [2, 25, 35, 5, 8, 13, 23]
  small_numbers = Array.new
  numbers.each do | number |
    if number < 10
      small_numbers.push(number)
    end
  end
  small_numbers.each {|number| print number.to_s + " "}
  puts ""
end

# Program 4
# Start your program with this line of code:
# numbers = [4, 6, 1, 4, 2, 8, 3, 4, 1, 7]
# The rest of your program should create and print out an array that only contains unique values from this original array.
# That is, the resulting array should look like: [4, 6, 1, 2, 8, 3, 7] The one catch: Don't use the "uniq" method available to arrays! (That would do this for you.)
run_program(19,4) do
  numbers = [4, 6, 1, 4, 2, 8, 3, 4, 1, 7]
  unique_numbers = Array.new
  numbers.each do | number |
    if !unique_numbers.include?(number)
      unique_numbers.push(number)
    end
  end
  unique_numbers.each {|number| print number.to_s + " "}
  puts ""
end

# Program 5
# Start with this line of code:
# array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]]
# It's a two dimensional array (yay!). Write code that will take each of those letters and put them into a brand
# new one dimensional array. So the resulting array should be:
# ["a", "b", "z", "c", "d", "e", "f", "g", "h", "i", "j"]
# Your last line of code should use the p command (e.g. p new_array) to make sure that your new array looks right.
# Hint: You'll want to use an each loop within an each loop. (Note - don't use the flatten method in this case,
# since it does all the work for you!)
run_program(19,5) do
  array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]]
  flat_array = Array.new

  array.each do |element|
    element.each do |letter|
      flat_array.push(letter)
    end
  end

  p flat_array
end

# Program 6
# Fibonacci numbers are numbers that follow the pattern:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...
# That is, each number is the sum of the two numbers that precede it.
# Write a program that prints out the first 100 fibonacci numbers. Use a loop!
run_program(19,6) do
  # Determine the 1st 100 fibonacci numbers
  current_fibonacci_number = 0
  previous_fibonacci_number = 1
  fibonacci_number = 0
  puts  "number 1 | 0"
  num_fibonacci_numbers = 100
  (num_fibonacci_numbers-1).times do |iterator|
    fibonacci_number = previous_fibonacci_number + current_fibonacci_number
    puts "number #{iterator+2} | #{fibonacci_number.to_s}"
    previous_fibonacci_number = current_fibonacci_number
    current_fibonacci_number = fibonacci_number
  end
  puts ""
end
