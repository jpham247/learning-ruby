require_relative "Song"

class SongList
	attr_accessor :songs
	
	def initialize
		@songs = Array.new
	end

	def add_song(song)
		@songs.push(song)
	end

	def play(songs=@songs)
		songs.each do |song|
			puts "Playing : \n#{song}"
			song.play
		end
	end

	def shuffle
		shuffled_songs = songs.shuffle
		play(shuffled_songs)
	end

	def duration
		total_duration = 0
		songs.each { |song| total_duration += song.duration }
		return total_duration
	end

end