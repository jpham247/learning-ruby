# Predict what error message you’d get if you pass 3 parameters
# into the subtract method of this Calculator.

answer = <<-EOF
When a an unexpected number of arguments are passed into the Calculator::subtract method, 
I expect an error message indicating an unexpected number of values given to the method and theres no
defined method signature matching the one used. 
"in 'subtract': wrong number of arguments (given 3, expected 2) (Argument Error)"
EOF

puts answer