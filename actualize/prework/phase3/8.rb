# Exercise 1)
# Recreate the Person class in your own text editor.
# A) Add a method called full_name that returns the person’s full name as a string.
# B) Add a method called email that returns the person’s email address as a string. 
# 	The person’s email is has the format: “firstname.lastname@gmail.com".
# C) Add a method called info that returns a string that describes the person in a 
# 	user friendly format. The catch: Make sure it works no matter how many hobbies 
# 	a person has! (Hint: Consider using an each loop.)

class Person
	attr_reader :first_name, :last_name, :hobbies
	attr_accessor :hair_color

	def initialize(first_name, last_name, hair_color = "Unknown", hobbies = [])
		@first_name = first_name
		@last_name = last_name
		@hair_color = hair_color
		@hobbies = hobbies
	end

	def add_hobby(hobby)
		@hobbies.push(hobby)
	end

	def full_name
		first_name + " " + last_name
	end

	def email_address
		first_name + "." + last_name + "@gmail.com"
	end

	def to_s
		full_name
	end

	def info 
		puts "Name : #{full_name}"
		puts "Hair Color : #{hair_color}"
		puts "E-Mail Address : #{email_address}"
	end
end

people = Array.new
people.push(Person.new("Billy Bob","Thornton"))
people.push(Person.new("Angelina","Jolie","Brown",["Tattoos","Kids"]))
people.push(Person.new("John","Voight","Salt and Peppa",["Lecturing","Strutting"]))


puts "# of People == #{people.count}"
puts people[0]

people.each do |person|
	person.info
end

# Exercise 2)
# Below the Person class, create a ContactList class. The ContactList should have two attributes: 
# A) title - this represents what list this is (e.g. “friends”, “business contacts”)
# B) contacts - this should be an array. It will contain numerous instances of the Person class.

# Exercise 3) 
# Add an instance method to the ContactList class called “add_contact” that will add a Person 
# instance to the particular contact list.

class ContactList
	attr_accessor :title , :contacts

	def initialize(title)
		@title = title
		@contacts = Array.new
	end

	def add_contact(first_name,last_name)
		contacts.push(Person.new(first_name,last_name))
	end

	def list_contacts
		puts "#{title} has the following contacts:"
		contacts.each do |contact|
			puts contact
		end
	end
end

address_book = ContactList.new("Address Book")
address_book.add_contact("Owen","Wilson")
address_book.add_contact("Vince","Vaughn")

address_book.list_contacts

