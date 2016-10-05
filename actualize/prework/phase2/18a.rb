# Exercise 18
def run_program(exercise_num,program_num, &block)
  puts "Exercise #{exercise_num} :: Program #{program_num}"
  puts "-" * 40
  yield if block_given?
  puts "-" * 16 + "END" + "-" * 16
end

# Program 1
# Assume that we see this inside irb:
# hash["a"].capitalize + hash["b"] + hash["c"].upcase
# TypeError: no implicit conversion of nil into String
#   from (irb):4:in `+'
# Create hash that would cause us to get this error.
# run_program(18,1) do
#   hash = {"a"=>"hello","b"=>nil,"c"=>"world!"}
#   output = hash["a"].capitalize + hash["b"].to_s + hash["c"].upcase
#   puts output
# end

# Program 2
# Let's say we have an empty hash assigned to a variable called 'hash'. If we were to say:
# hash["wat"]
# what would it return?

# Program 3
# Next, define the above hash in a way so that it would return the number 0 instead.
