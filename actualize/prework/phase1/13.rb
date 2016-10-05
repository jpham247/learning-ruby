# Program 1)
# 1)Create a program that counts by 2's: 2, 4, 6, 8, etc. until it reaches 100.

def countTheTwos(limit)
  current_num = 0
  iterator = 0
  puts "Start @ #{current_num}"
  while (current_num < limit)
    iterator += 1
    current_num += 2
    puts "Count @ #{iterator} : #{current_num}"
  end
end

def countTheTwosTimes(limit)
  current_num = 0
  iterator = 0
  multiplier = 2
  puts "Start @ #{current_num}"
  (limit / multiplier).times do
    iterator += 1
    current_num += 2
    puts "Count @ #{iterator} : #{current_num}"
  end
end

# countTheTwos(100)
countTheTwosTimes(100)

# Program 2
# 2)Create a program that asks a user for 10 numbers and then returns the sum.
def askForNumber()
  puts "Please provide a positive integer :"
  int = gets.chomp.to_i
  if (int > 0)
    return int
  else
    puts "Not a Positive Integer Number"
  end
end

def sumSomeNumbers(number_of_nums)
  # Intro to Game
  puts "I'm a smart program, Give me #{number_of_nums} Numbers and I will give you their Sum!"
  # Ask for a Number.
  sum = 0
  iterator = 0
  number_of_nums.times do
    iterator += 1
    sum += askForNumber
  end
  puts "Thanks, the Sum of the #{iterator} numbers you entered is : #{sum}"
end

sumSomeNumbers(10)

# Program 3
# 3)Create a program that calculates averages.
# The program will first ask the user how many numbers they'd like to enter.
# Then, the program will prompt the user to enter each number.
# Finally, the program will tell the user the average of all of the numbers.
# Remember: To find the average of numbers, you get the sum of all the numbers
# and divide that sum by the count of how many numbers there are. For example, if
# the user enters: 11, 7, 30, 22, 55 the average will be 25. This is because
# 11 + 7 + 30 + 22 + 55 = 125, and 125 / 5 (the amount of numbers in the list) = 25.

def getIntegerAverage(total_samples)
  sum = 0
  iterator = 0
  puts "Ok, Thanks. We're going to average #{total_samples} numbers."
  total_samples.times do
    iterator += 1
    sum += askForNumber
  end
  return sum.fdiv(total_samples)
end

def letsAverageSomeNumbers
  puts "Let's Average Some Numbers."
  puts "How many Numbers should we average?"
  total_samples = askForNumber
  average = getIntegerAverage(total_samples)
  puts "The rough average of the #{total_samples} numbers you entered is :"
  puts average
end

letsAverageSomeNumbers
