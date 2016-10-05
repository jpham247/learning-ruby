#program : fortune cookie

def fortuneCookie()
  puts "I am a famous fortune teller! Tell me your favorite\ninteger, and I'll tell you a fortune!"
  puts "Favorite Number : "
  guess = gets.chomp.to_i
  puts "your guess is : #{guess}"
  if ( 0 < guess && guess < 75 )
    puts "Something Good is Coming your Way!"
  elsif ( guess >= 75 )
    puts "It's going to rain tomorrow."
  else
    puts "Better get your affairs in order."
  end
end

fortuneCookie


# Program : Guessing a Number

def guessANumber()
  puts "I'm thinking of a number between 1-100, Tell me what you think it\nis & I'll tell you if you are right!"
  puts "Your Guess : "
  guess = gets.chomp.to_i
  puts "Your guess is : #{guess}"
  if (guess == 75 )
    puts "You've Won by getting the Right Answer!"
  elsif ( guess < 1 || guess > 100  )
    puts "Your guess strayed out of the requested bounds."
  else
    puts "Sorry you've lost, better Luck Next time..."
  end
end

# guessANumber

#Trivia game

def getResponseCompareWithAnswer(answer)
  response = gets.chomp.downcase
  if (answer.downcase == response)
    puts "You are correct!"
    return true
  else
    puts "Your answer was incorrect. Better Luck Next Time."
    return false
  end
end

def triviaGame()
  # Intro to game
  puts "Welcome to a Simple Trivia Game. Try to answer the following three questions"
  # Ask Question 1.
  puts "In What Year did the US Consitution get Ratified?"
  getResponseCompareWithAnswer("1776")
  # Ask Question 2.
  puts "What is Brad's last name?"
  getResponseCompareWithAnswer("Pitt")
  # Ask Question 3.
  puts "What is the capitol of California?"
  getResponseCompareWithAnswer("Sacremento")
end

# triviaGame

def askForNumber()
  puts "Please provide a positive integer :"
  int = gets.chomp.to_i
  return int
end

def sumThreeNumbers()
  # Intro to Game
  puts "I'm a smart program, Give me Three Numbers and I will give you their Sum!"
  # Ask for a Number.
  sum = 0
  sum += askForNumber
  # Ask for Second Number
  sum += askForNumber
  # Ask for a 3rd Number.
  sum += askForNumber
  puts "Thanks, the Sum of the Three numbers you entered is : #{sum}"
end

# sumThreeNumbers
