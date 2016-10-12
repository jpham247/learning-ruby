# Program 1
# Create a Song class that can produce a song instance that 
# represents your favorite song. Include the song’s title, artist, and lyrics. 
# NOTE: Hold onto this class! You’ll be needing it for many future exercises.

class Song
	attr_accessor :title, :artist, :lyrics

	def initialize(title,artist,lyrics)
		@title = title
		@artist = artist
		@lyrics = lyrics
	end
end

favorite_song = Song.new("Geographer","This is How we walk on the Moon","sha la la la la la te da")
puts favorite_song.inspect

# Program 2
# Create a Cat class that can produce a particular type of cat. 
# Include the cat’s name, breed, and age.

class Cat
	attr_reader :name
	attr_accessor :breed, :age

	def initialize(name)
		@name = name
		@breed = "SmallTiger"
		@age = 3
	end
end

my_cat = Cat.new("billy-bob")
my_cat.breed = "tabby"
my_cat.age = 12

puts my_cat.inspect

puts "\n"
puts "Cat's Name: #{my_cat.name}"
puts "Cat's Breed: #{my_cat.breed}"
puts "Cat's Age: #{my_cat.age}"