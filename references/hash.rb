# File describes the use of hashes in Ruby

#Obj New Instantiation
item = Hash.new
# Simple Instantiation
item = {}
# Simple Instantiation with Initial values
item = {"name" => "bread","quantity"=>2,"price"=>2.5}
grocery_list = Array.new
grocery_list.push(item)
first_item = grocery_list[0]
puts first_item["name"]

# Instantiation with Hash Symbol Keys rather than Object Keys
item = { name: "Bread" , quantity: 2, brand: "Treehouse Bread Company", "price"=>2.5 }

# Delete Key/Value Pair
item.delete(:name) # Deletes the key/value pair designated by the Key
item.delete("price")

# Hash Insertion
item["key"]="value"
item[:key]="value"
item.store("key","value")

# Hash Key values
item.keys # List Keys
item.values # List Values

#Check for KEY Existence
item.has_keys?("key")
item.key?("key")
item.member?("key")

#Check for Value Existence
item.has_value?("key")
item.value?("key")

# Hash Accessors
item.fetch("key")
item["key"]

item.values_at("key1","key2") # Returns Array of Values

# Hash Methods
item.inspect
item.shift # Pop 1st Key
item.invert
item.length
item.merge({"new_key"=>"new_value"})

# EACH Methods
item.each do |key,value|
  puts "Key : #{key} | Value : #{value}"
end

item.each_value do |value|
  puts "Value : #{value}"
end

item.each_key do |key|
  puts "Key : #{key}"
end
