# Program 1) Check out the Ruby documentation on strings and find four methods
# you've never worked with before and figure out how they work.
# Describe how each works in your own words.

prog1_answer = <<-EOF
1) String#tr(from_str,to_str)
\tTransforms a copy of the original string by looping through each character and determining every instance of a
\tcharacter from the 'from_str' and replacing it with the character in the corresponding index of 'to_str'
2) String#strip
\tLoops through the characters in the string and determines if the character at a particular index is some type of
\twhitespace character such as '\\t','\\n','\\r', if thats true it removes that whitespace character
3) String#sub()
\tHas three forms, but essentially takes a RegEx or Wildcard pattern and uses it to search the string for a set of characters
\tthat meet all the pattern's rules. It then replaces it with the a value from a second argument.
4) String#split
\tTakes a pattern delimiter and divids a string into the pieces divided by the delimiting pattern matchs, it returns these
\ttokens as an array.
EOF
puts prog1_answer

# Program 2) Write a program that asks the user to enter 10 words, one at a time.
# The program should then display all 10 words in alphabetical order.
# Write this program using a loop so that you don't have to write any additional lines
# of code if you were to change the program to ask the user for 100 words.
# That is, you'd only need to make one simple change, and not have to write any new lines of code.

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

run_program(16,2) do
  puts "We're going to sort some words your provide."
  word_set = Array.new
  word_request_prompt = "Please provide a new word"
  # Indicate Number of words here.
  iterations = 10
  iterations.times do
    word_set.push(ask_for_input(word_request_prompt))
  end
  puts "-"*40
  puts "Thanks, here are your words right back at you.. Sorted."
  word_set.sort!
  word_set.each do |word|
    puts word
  end
end

# Program 3) Write a program that asks the user to enter a word, and the program will
# output the letters of that word in random order.
# (For example, "cat" may output "atc" or "tac" or "act" etc.) To accomplish this, investigate the following methods:
# The string's "split" method
# The array's "shuffle" method
# The array's "join" method

run_program(16,3) do
  ask_for_word_prompt = "Please enter a word for us to scramble"
  user_word = ask_for_input(ask_for_word_prompt)
  character_array = user_word.split(//)
  character_array.shuffle!
  puts character_array.join
end
