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
