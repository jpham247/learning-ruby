sample_string = "This is a string"

puts sample_string.index(/\d/) # Returns value of 1st index where string contains a number

# String Formatting
sprintf("%0.2f", sample_string.rjust(10))
# Format to 2 decimal place float and do a right justification + 10 space padding.

#Multi-Line String

string = <<-EOF
This is my Multi-Line String
I use the EOF Here-Doc format.
Its amazing.
EOF

# toUpper Block used on each line of a string
string.each_line{ |line| puts "* #{line}" }.upcase

string.downcase # In Place toLower
string.downcase! # Setting toLower

string.gsub("a","A") # swap instances of "a" with "A"
