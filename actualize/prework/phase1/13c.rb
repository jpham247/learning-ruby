# Return an array that doubles each number
numbers = [1, 2, 3, 4]

iterator = 0
numbers.each do |number|
  numbers[iterator] = number * 2
  iterator += 1
end

puts numbers

# To escape the while loop, the user must input your favorite team as theirs
puts "Who is your favorite team?"
favorite_team = ""
my_favorite_team = "Arsenal"
while favorite_team != my_favorite_team.downcase
  favorite_team = gets.chomp.downcase
  if (favorite_team != my_favorite_team.downcase)
    puts "Are you sure they're your favorite? I think you meant #{my_favorite_team}. Try again."
  end
end

puts "That's what I thought. Now you're on the right side."

# Blast off! Count down from 10 and then blast off your rocket
count = 10
puts "Let's send this thing to space!"
while (count <= 10 && count > 0)
  puts count
  count -= 1
end

puts "BLAST OFF!"
