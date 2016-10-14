# Take your Song class from the exercise in Episode 1 
# and revise it to make it flexible enough to produce all different kinds of songs.

class Song
	attr_accessor :title, :artist, :lyrics

	def initialize
		@title = "The Man Who Sold the World"
		@artist = "David Bowie"
		@lyrics = 
<<-EOF
We passed upon the stair, we spoke of was and when
Although I wasn't there, he said I was his friend
Which came as some surprise I spoke into his eyes
I thought you died alone, a long long time ago
Oh no, not me
I never lost control
You're face to face
With the man who sold the world
I laughed and shook his hand, and made my way back home
I searched for form and land, for years and years I roamed
EOF
	end
	
	def set_song(title,artist,lyrics)
		@title = title
		@artist = artist
		@lyrics = lyrics
	end

	def to_s
		"#{title} - #{artist};\nLyrics:\n#{lyrics}"
	end

end

favorite_song = Song.new
puts favorite_song
puts "\n"
new_lyrics = <<-EOF
Every step is moving me up
Moving, it's moving me up
Every step is moving me up
Moving, moving me up

Each tiny, tiny move
Is all I need and I jump over
Every step is moving me up
Moving, it's moving me up

Every step is moving me up
Moving, moving me up
Every step is moving me up
Moving, it's moving me up

Each tiny, tiny move
Is all I need and I jump over
Every step is moving me up
Moving, moving me up

This is how we walk on the moon
This is how we walk on the moon
This is how we walk on the moon
This is how we walk on the moon
EOF
favorite_song.set_song("Geographer","This is How we walk on the Moon",new_lyrics)
puts favorite_song