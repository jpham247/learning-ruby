class Song
	attr_accessor :title, :artist, :lyrics, :duration

	def initialize(title="NoTitle",artist="NoArtist",duration=60)
		@title = title
		@artist = artist
		@duration = duration
		@lyrics = "NoLyrics"
	end

	def to_s
		"#{title} - #{artist}"
	end

	def play
		`say #{@lyrics}`
	end

	def friendly_duration
		minutes = @duration / 60
		seconds = @duration % 60 
		return "#{minutes} minutes, #{seconds} seconds"
	end
end