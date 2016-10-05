# Initialization

std_array = Array.new(["milk","eggs","cheese"])

basic_array = []
grocery_list = ["milk","eggs","cheese"]
grocery_list2 = %w(milk eggs cheese) #Insert All items as strings

# Inspect on Console
puts basic_array.inspect
puts std_array.inspect
puts grocery_list.inspect
puts grocery_list2.inspect

# Array length
puts grocery_list2.length
puts grocery_list2.count
puts grocery_list2.size


# Array Inserts
grocery_list2 << "Cookies"
grocery_list2.push(5) # Does not have strict type limitations
grocery_list2.unshift("Candy") # Push to Front
grocery_list2 += ["ice","toothbrush"] # Array Concatenation

# Array Removal
# Pop off Item from Back
last_item = grocery_list2.pop # Returns & Removes Item from Back
puts last_item

first_item = grocery_list2.shift # Access & Removal of 1st Item (front)
puts first_item

first_two_items = grocery_list2.drop(2) # Drops the First two Items into a new array
puts first_two_items.inspect

second_third_items = grocery_list2.slice(1,2) # Removes # Items from an index point in the array
# array.slice(index,numItems)
puts second_third_items.inspect

# Array Accessors
#array[<index>]
puts grocery_list2[2]
puts grocery_list2.at(2)

# Array Searching
grocery_list2.count # Provides total number of indices
grocery_list2.count("milk") # Counts number of values in array matching "milk"
grocery_list2.include?("water") # Returns Bool indicating presence of value in array.

# Array each
grocery_list2.each do |i|
  puts i
end
