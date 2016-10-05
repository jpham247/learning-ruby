# Program 18

# Common Methods
def run_program(exercise_num,program_num, &block)
  puts "Exercise #{exercise_num} :: Program #{program_num}"
  puts "-" * 40
  yield if block_given?
  puts "-" * 16 + "END" + "-" * 16
end

# Exercise 1
# Write a program that serves as a dictionary.
# To keep it simple, the dictionary will only contain five words and their definitions.
# When the user starts the program, the program lists all five words that the user can look up.
# The user can then enter a word, and the program will return its definition.

def ask_for_input(prompt)
  puts prompt + " :"
  word = gets.chomp
  return word
end

run_program(18,1) do
  dictionary = Hash.new
  dictionary.store(:hash,"Data structure that stores key value pairs.")
  dictionary.store(:array,"Data structure that stores ordered data")
  dictionary.store(:string,"a datatype that stores multiple characters")
  dictionary.store(:integer,"a datatype that stores whole numbers")
  dictionary.store(:boolean,"a data type that indicates true false values")
  puts "This is a dictionary program, it can provide the definition of the following words: "
  dictionary.keys.each do |key|
    print key.to_s + " "
  end
  puts " "
  word_prompt = "Try seeking a definition to one of the above words"
  puts "Defintion : "
  puts dictionary.fetch(ask_for_input(word_prompt).to_sym)
end

# Exercise 2
# Here is a 2D array:
# meals = [["breakfast", "pancakes with maple syrup"], ["lunch", "BLT"], ["dinner", "salmon with lemon rice"]]
# Each inner array’s first element describes the meal of the day (e.g. "breakfast"), and the second element
# in each inner array describes the particular meal (e.g. “pancakes with maple syrup”). Change “meals” to
# use a hash called “meals_hash” instead of a 2D array. The keys should be the type of meal,
# and the values the specific type.

run_program(18,2) do
  meals = [["breakfast", "pancakes with maple syrup"], ["lunch", "BLT"], ["dinner", "salmon with lemon rice"]]
  puts meals.inspect

  meals_hash = {breakfast: "pancakes with maple syrup", lunch: "BLT", dinner: "salmon with lemon rice"}
  meals_hash.each do |key,value|
    puts "Meal : #{key} | Food : #{value}"
  end
end

# Exercise 3
# Now instead of manually creating meals_hash, create a program using the each method, that builds
# the hash for you. Remember to use the each method, and don’t use the “to_h” method (that’s cheating!).
run_program(18,3) do
  meals = [["breakfast", "pancakes with maple syrup"], ["lunch", "BLT"], ["dinner", "salmon with lemon rice"]]
  puts meals.inspect
  meals_hash = Hash.new
  meals.each do |meal|
    meals_hash.store(meal[0].to_sym,meal[1])
  end
  meals_hash.each do |key,value|
    puts "Meal : #{key} | Food : #{value}"
  end
end
