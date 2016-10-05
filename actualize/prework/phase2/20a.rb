
# code_string = <<-EOF
people = [                                                #01
  {                                                       #02 19
    "first_name" => "Bob",                                #03
    "last_name" => "Jones",                               #04
    "hobbies" => ["basketball", "chess", "phone tag"]     #05 21 23 25
  },                                                      #06
  {                                                       #07 30
    "first_name" => "Molly",                              #08
    "last_name" => "Barker",                              #09
    "hobbies" => ["programming", "reading", "jogging"]    #10 32 34 36
  },                                                      #11
  {                                                       #12 41
    "first_name" => "Kelly",                              #13
    "last_name" => "Miller",                              #14
    "hobbies" => ["cricket", "baking", "stamp collecting"]#15 43 45 47
  }                                                       #16
]                                                         #17

people.each do |person|                                   #18 29 40
  person["hobbies"].each do |hobby|                       #20 31 42
    puts hobby.upcase                                     #22 24 26 33 35 37 44 46 48
  end                                                     #27 38 49
end                                                       #28 39 50
# EOF
puts "-"*50

#Program 2
# Start with this code:
# It's an array of hashes that is used to represent data about different people.
# Using an each loop, the rest of your program should add additional keys and values to
# each person (in addition to the existing first_name, last_name, and hobbies), as follows:
# 1) Each person should be given a random age. Hint: Using rand(100) will help you generate a
# random number from 0 to 99.
# 2) Each person should given an email address that consists of their
# first name + last name @ gmail.com. For example, Bob Jones will have an email of bobjones@gmail.com.
#
# The program should end with:
# p people
# so that you can see if the correct modifications were made to each hash.

people = [
  {
    "first_name" => "Bob",
    "last_name" => "Jones",
    "hobbies" => ["basketball", "chess", "phone tag"]
   },
   {
    "first_name" => "Molly",
    "last_name" => "Barker",
    "hobbies" => ["programming", "reading", "jogging"]
   },
   {
    "first_name" => "Kelly",
    "last_name" => "Miller",
    "hobbies" => ["cricket", "baking", "stamp collecting"]
   }
]

# Update person by index
people.each do |person_hash|
  # Provide random age
  random_age = rand(100)
  person_hash.store("age",random_age)
  # Generate E-Mail Address
  email_address = person_hash.values_at("first_name","last_name").join.downcase
  email_address += "@gmail.com"
  person_hash.store("email",email_address)
end

p people
