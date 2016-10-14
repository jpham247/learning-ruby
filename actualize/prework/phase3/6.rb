# Exercise 1)
# Add an ‘info’ instance method to your Song class that returns a string
# that contains information about the song in an easy to read format.

class Song

	def initialize(title ="NoTitle",artist="NoArtist",lyrics="NoLyrics")
		@title = title
		@artist = artist
		@lyrics = lyrics
	end

	def title=(text)
		@title = text
	end

	def title
		return @title ||= "NoTitle"
	end

	def artist=(text)
		@artist = text
	end

	def artist
		return @artist ||= "NoArtist"
	end

	def lyrics=(text)
		@lyrics = text
	end

	def lyrics
		return @lyrics ||="NoLyrics"
	end

	def info
		return "#{title} - #{artist};\nLyrics:\n#{lyrics}"
	end

	def to_s
		return info()
	end
end

song = Song.new
puts song


# Exercise 2)
# Create a new class called Product, that will produce products that are available for sale.
# a) Each product should have a name, a description, and a price.
# b) It should have methods that return these three essential attributes.
# c) It should also have additional methods that allow us to change those attributes.
# d) Next, add a method called tax that returns the price multiplied by 0.09 
#    (which will represent sales tax.) This tax method should call the ‘price’ method.
# e) Next add a method called total which returns the sum of the price plus the tax.
# 	 This method should reference both the price method as well as the tax method.

class Product
	attr_accessor :name, :description, :price

	TAX_RATE = 0.09

	def initialize(name, description, price)
		@name = name
		@description = description
		@price = price
	end

	def tax
		return price * TAX_RATE
	end

	def total
		return price + tax
	end

	def to_s
		<<-eos.gsub(/\t+/, "").strip
		Product : #{name} is a #{description}
		Which costs: $#{'%.2f'%price}, including $#{'%.2f'%tax} tax'
		that comes to $#{'%.2f'%total}
		eos
	end
end

taco = Product.new("taco","yummy food with meat, carbs, and salsa",1.00)
puts taco