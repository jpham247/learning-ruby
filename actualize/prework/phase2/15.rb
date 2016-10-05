# Common Methods
def run_program(exercise_num,program_num, &block)
  puts "Exercise #{exercise_num} :: Program #{program_num}"
  puts "-" * 40
  yield if block_given?
  puts "-" * 16 + "END" + "-" * 16
end

def ask_for_input(prompt)
  puts prompt + " :"
  word = gets.chomp
  return word
end

#Program 1
run_program(15,1) do
  words = ["zebra", "monkey", "aardvark"]
  puts "Original Array"
  puts words.inspect
  puts "Let's Sort it. "
  puts words.sort!
  puts "New Array: "
  puts words.inspect
end

# Program 2
# Create a program that asks a user to enter four different words, one at a time.
# Then, the computer will ask the user to choose a number between 0 and 3.
# The computer will then display the word corresponding to the correct number.
# For example, assume the user typed in the words: "ghost", "umbrella", "candy", and "pepperoni" - in that order.
# The user is then prompted to choose a number.
# If the user chooses the number 2, the computer displays the third word, which in this example is "candy".


run_program(15,2) do
  words = Array.new
  word_request_prompt = "Please provide me a new word"
  number_request_prompt = "Please provide a number between 0 and 3"

  4.times do
    word = ask_for_input(word_request_prompt)
    words.push(word)
  end

  index = -1
  while index == -1 do
      user_number = ask_for_input(number_request_prompt).to_i
      if (user_number < 4 && user_number >= 0)
        index = user_number
      else
        puts "Your input (#{user_number}) is invalid. Try Again"
      end
  end

  puts "You've provided the number: #{user_number.to_s}"
  puts "The word you input corresponding to this index is: "
  puts words.at(index)
end

# Program 3
# Create a program that calculates the median of this array of odd numbers:
# [1, 3, 4, 7, 12] which should output “4”, the median.
# Be sure your program can determine the median of any array having an odd number of elements.
# To check, replace the array above with [1, 2, 5, 9, 12, 13, 17] where the median “9”
# should be returned.
def calculate_median1(numbers)
  median = -1
  #Sort Array
  sorted_array = numbers.sort
  #Find Median index
  if ((sorted_array.length%2) != 1 )
    puts "There is an even number of numbers provided, this method only works on an odd number of data points."
  else
    median = sorted_array.at(sorted_array.length/2)
  end
  return median
end

run_program(15,3) do
  puts "Find median for first set of numbers [1, 3, 4, 7, 12]"
  first_set = Array.new([1, 3, 4, 7, 12])
  puts "median = #{calculate_median1(first_set)}"
  puts "Find median for first set of numbers [1, 2, 5, 9, 12, 13, 17]"
  second_set = Array.new([1, 2, 5, 9, 12, 13, 17])
  puts "median = #{calculate_median1(second_set)}"
end

# Program 4
# Create an entirely new program that can find the median of an even number of elements in an array. Use the array [1, 2, 3, 7]
# which should return 2.5. Be sure your program can determine the median of any array having an even number of elements.
# To check, replace the array above with [3, 5, 8, 12, 13, 14] where the median “10” should be returned. The definition of a median number is found here.
def calculate_median(first_num,second_num)
  median_numbers = Array.new([first_num.to_f,second_num.to_f])
  median_numbers.sort!
  median = (median_numbers[1] - median_numbers[0])/2
  median += median_numbers[0]
  median = median.to_i if (median.floor == median)
  return median
end

def calculate_median2(numbers)
  median = -1
  #Sort Array
  sorted_array = numbers.sort
  #Find Median index
  if ((sorted_array.length%2) != 1 )
    first_num = sorted_array.at(sorted_array.length/2)
    second_num = sorted_array.at((sorted_array.length/2)-1)
    median = calculate_median(first_num,second_num)
  else
    median = sorted_array.at(sorted_array.length/2)
  end
  return median
end

run_program(15,4) do
  puts "Find median for third set of numbers [1, 2, 3, 7]"
  third_set = Array.new([1, 2, 3, 7])
  puts "median = #{calculate_median2(third_set)}"
  puts "Answer should be 2.5"
  puts "Find median for fourth set of numbers [3, 5, 8, 12, 13, 14] "
  fourth_set = Array.new([3, 5, 8, 12, 13, 14])
  puts "median = #{calculate_median2(fourth_set)}"
  puts "Answer should be 10"
end

# Program 5
# Create an entirely new program that can determine the median of either an odd or even number of elements in an array.
# Instead of hardcoding an array this time, the program will prompt the user to enter how many numbers
# they would like to add, and then have the user input those numbers.
# Because a user may not give the number in ascending order, be sure to sort the array before trying to find the median.

#DEPENDS ON PREVIOUSLY DEFINED Functions

def get_set_of_numbers
  number_set = Array.new
  user_response = ""
  number_request_prompt = "Please provide an integer"
  # Until the user indicates he/she is finished, continue to request a number.
  puts "Please provide a set of numbers, when you're done say \"Done\" to continue."
  while user_response.downcase != "done"
    user_response = ask_for_input(number_request_prompt)
    if (user_response.to_i != 0 || user_response == "0") # String.to_i returns a 0 if the String fails conversion
      number_set.push(user_response.to_i)
    else
      puts "Input was invalid. Try Again."
    end
  end
  return number_set
end

run_program(15,5) do
  puts "Let's try to find the median of numbers you pick out..."
  number_set = get_set_of_numbers
  puts "You've provided the following numbers :"
  puts number_set.inspect
  puts "I think the median is :"
  puts calculate_median2(number_set)
end
