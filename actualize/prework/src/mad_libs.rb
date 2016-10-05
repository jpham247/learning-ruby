# 1) Program for Simple Mad Libs Game.

def displayMadLibWelcome()
  puts "Welcome to MadLibs. \nPlease provide a few words to get your own MadLib!"
end

def askForNoun()
  puts "Gimme a Noun, then press Enter : "
  return gets.chomp
end

def askForVerb()
  puts "Gimme a Verb, then press Enter : "
  return gets.chomp
end

def askForAdjective()
  puts "Gimme a Adjective, then press Enter : "
  return gets.chomp
end

displayMadLibWelcome
noun = askForNoun
first_adj = askForAdjective
second_adj = askForAdjective
third_adj = askForAdjective

puts "Roses are #{first_adj}, #{noun}s are #{second_adj}, but you are #{third_adj}!"

# 2) Word Play

def wordPlay()
  puts "Let's play a game, give me a word then press Enter: "
  word = gets.chomp
  puts "Here is your word in Reverse!\n #{word.reverse}"
  puts "Here is your word in AllCAPS!\n #{word.upcase}"
  puts "Wasn't that fun?"
end

wordPlay
