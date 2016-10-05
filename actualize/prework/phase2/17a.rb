# Take the array
# prizes = ["car", "dinning room set", "zonk", "jet ski"]
# and using the “each” method, create a new array called only_prizes that doesn’t include any zonks.

prizes = ["car", "dinning room set", "zonk", "jet ski"]
index = 0
prizes_without_zonk = prizes
prizes.each do |prize|
  if prize.downcase.index("zonk") != nil
    prizes_without_zonk.slice!(index)
  end
  index += 1
end
puts prizes_without_zonk.inspect

# Write a program that asks the user to type in 10 words, one at a time.
# The program will then print out every other word.

def ask_for_input(prompt)
  puts prompt + " :"
  word = gets.chomp
  return word
end

puts "Please provide 10 words."
word_set = Array.new
word_request_prompt = "Please provide a new word"
# Indicate Number of words here.
iterations = 10
iterations.times do
  word_set.push(ask_for_input(word_request_prompt))
end
puts "-"*40
puts "Thanks, here is every other word."
index = 0
word_set.each do |word|
  puts word if (index.odd?)
  index += 1
end

# Write a program that asks the user to type in 10 words, one at a time.
# The program will only print out words that start with the letter a. (Check out the "start_with?" method available to strings.)

def ask_for_input(prompt)
  puts prompt + " :"
  word = gets.chomp
  return word
end

puts "Please provide 10 words."
word_set = Array.new
word_request_prompt = "Please provide a new word"
# Indicate Number of words here.
iterations = 10
iterations.times do
  word_set.push(ask_for_input(word_request_prompt))
end
puts "-"*40
puts "Thanks, here are the words that start with the letter 'a'"
word_set.each do |word|
  puts word if word.downcase.start_with?('a')
end
