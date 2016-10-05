# Exercise 20
# Common Methods
def run_program(exercise_num,program_num, &block)
  #Indicate Programs to Run
  run_these=[1,2]
  #########################
  if (run_these.include?(program_num))
    puts "Exercise #{exercise_num} :: Program #{program_num}"
    puts "-" * 40
    yield if block_given?
    puts "-" * 16 + "END" + "-" * 16
  end
end

# Program 1
# Use hashes to define three types of cars. Identify the cars' make (brand), model, color, and year. (Example: a silver 2006 Honda Accord)
run_program(20,1) do
  car_collection = Array.new
  car1 = {make: "Aston Martin",model: "DB9",color: "Silver",year: 2006}
  car2 = {make: "Ferrari",model: "Modena 360",color: "Red",year: 2003}
  car3 = {make: "Lamborghini",model: "Aventador",color: "Black",year: 2012}
  car_collection.push(car1)
  car_collection.push(car2)
  car_collection.push(car3)
  p car_collection
end

# Program 2
# Assume you have the following code:
#
# drink1 = {"name" => "Seltzer", "ingredients" => ["water", "bubbles"]}
# drink2 = {"name" => "Coca Cola", "ingredients" => ["water", "bubbles", "sugar", "brown food coloring"]}
# drink3 = {"name" => "water", "ingredients" => ["hydrogen", "oxygen"]}
#
# Write additional code so that the terminal outputs:
#
# The drink Seltzer has the ingredients: water, bubbles.
# The drink Coca Cola has the ingredients: water, bubbles, sugar, brown food coloring.
# The drink water has the ingredients: hydrogen, oxygen.
#
# Note: Write the code in such a way that it would still work even if someone went into the hashes and changed the number of ingredients for any particular drink.
def list_array(array)
  list = ""
  array.each do |element|
    list += (element.to_s + ", ")
  end
  return list.chomp(", ")
end

run_program(20,2) do
  drink1 = {"name" => "Seltzer", "ingredients" => ["water", "bubbles"]}
  drink2 = {"name" => "Coca Cola", "ingredients" => ["water", "bubbles", "sugar", "brown food coloring"]}
  drink3 = {"name" => "water", "ingredients" => ["hydrogen", "oxygen"]}
  drink_menu = Array.new
  drink_menu.insert(-1,drink1,drink2,drink3)
  drink_menu.each do |drink|
    puts "The drink #{drink["name"]} has the incredients: #{list_array(drink["ingredients"])}."
  end
end
