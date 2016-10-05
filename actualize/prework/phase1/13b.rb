# Program 1 : Guessing a Number + Guess Score

def guessANumber(answer)
  puts "I'm thinking of a number between 0-100, Tell me what you think it\nis & I'll tell you if you are right!"
  guess = -1
  num_guesses = 0
  while (guess != answer)
    guess = guessTheAnswer(answer)
    num_guesses += 1
  end
  puts "You got it, #{guess} is the right answer! It took you #{num_guesses} times."
end

def guessTheAnswer(answer)
  puts "What's Your Guess : "
  guess = gets.chomp.to_i
  if (guess == answer && guess > 0 && guess < 100 )
    puts "Bam!"
    return guess
  else
    puts "Sorry, better Luck Next time..."
  end
end

guessANumber(75)

# Program 2 : Guess a Random Number
guessANumber((rand() * 100).to_i)
