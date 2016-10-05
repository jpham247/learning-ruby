counter = 0                 # 1
8.times do                  # 2
  if counter.even?          # 3 7  12 16 21 25 30 34
    puts "Even"             # 4    13    22    31
  else                      #   8     17    26    35
    puts "Odd"              #   9     18    27    36
  end                       # 5 10 14 19 23 28 32 37
  counter = counter + 1     # 6 11 15 20 24 29 33 38
end                         # 39

puts "That was fun!"        # 40 
