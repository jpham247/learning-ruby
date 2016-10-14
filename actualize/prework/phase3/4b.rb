class SongIdiomatic

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

	def to_s
		"#{title} - #{artist};\nLyrics:\n#{lyrics}"
	end
end

class SongIdeal
	attr_accessor :title, :artist, :lyrics

	def initialize
		@title = "NoTitle"
		@artist = "NoArtist"
		@lyrics = "NoLyrics"
	end

	def to_s
		"#{title} - #{artist};\nLyrics:\n#{lyrics}"
	end
end

SongStruct = Struct.new(:title, :artist, :lyrics) do
	def to_s
		"#{title} - #{artist};\nLyrics:\n#{lyrics}"
	end
end

puts "Idiotmatic Ruby : Song Class"
idiomatic = SongIdiomatic.new
puts idiomatic
idiomatic.title = "Idiomatic Song"
idiomatic.artist = "Some Artist 1"
puts idiomatic 
puts "\n"


puts "Accessor Attribute Usage Ruby : Song Class"
accessor = SongIdeal.new
puts accessor
accessor.title = "Accessor Song"
accessor.artist = "Some Artist 2"
puts accessor 
puts "\n"

puts "Struct Usage Ruby : Song Struct"
struct = SongStruct.new("Struct Song","Constructicons","Simple Lyrics")
puts struct

