# Program 17

def run_program(exercise_num,program_num, &block)
  puts "Exercise #{exercise_num} :: Program #{program_num}"
  puts "-" * 40
  yield if block_given?
  puts "-" * 16 + "END" + "-" * 16
end

#Exercise 1
# Start with the array
# foods = ["Pizza", "Spaghetti", "Creme brulee", "Ramen"]
# and using the “each” method, output each element, but add “is tasty.” to each line:
# Pizza is tasty.
# Spaghetti is tasty.
# Creme brulee is tasty.
# Ramen is tasty.

run_program(17,1) do
  foods = ["Pizza", "Spaghetti", "Creme brulee", "Ramen"]
  foods.each do |food_item|
    puts food_item + " is tasty."
  end
end

# Exercise 2
# Take the array
# things =  [3, “yellow”, “pink”, 4, 6]
# and using the each method, only output the colors:
# yellow
# pink
# You can use the “class” method to see the datatype of a variable when iterating through the array.
# Try researching (and doing!) other ways of detecting if a variable is a string for this exercise.

def check_is_color1(object)
  if (object.class.to_s == "String")
    return true
  else
    return false
  end
end

def check_is_color2(object)
  if (object.to_s.index(/[0-9]/) == nil)
    return true
  else
    return false
  end
end

run_program(17,2) do
  things = Array.new([ 3 , "yellow", "pink", 4, 6])
  puts things.inspect
  things.each do |thing_item|
    if check_is_color2(thing_item)
      puts thing_item
    end
  end
end

# Exercise 3
# Start a program with the following line of code:
# numbers = [5, 17, 2, 899, 101, 4, 66, 123, 98]
# The rest of your program should calculate the sum of all those numbers. Be sure to use the each method.
run_program(17,3) do
  total = 0
  numbers = [5, 17, 2, 899, 101, 4, 66, 123, 98]
  numbers.each do |number|
    total += number
  end
  puts total
end
