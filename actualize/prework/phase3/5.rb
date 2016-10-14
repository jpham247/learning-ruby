# Add a constructor to your Song class so that your class is 
# capable of producing a song instance with its title, artist,
# and lyrics in one line of code.

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

	def to_s
		"#{title} - #{artist};\nLyrics:\n#{lyrics}"
	end
end

song = Song.new
puts song