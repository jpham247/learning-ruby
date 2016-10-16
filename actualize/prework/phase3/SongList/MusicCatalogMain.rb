require_relative "Song"
require_relative "SongList"

music_list = SongList.new

bowie_song = Song.new("David Bowie","The Man Who Sold the World",Random.new.rand(360))
bowie_song.lyrics = <<-EOF.gsub(/\n+/, " ").strip
This is the lyrics to the David Bowie Song.
EOF


favorite_song = Song.new("Geographer","This is How we walk on the Moon",Random.new.rand(360))
favorite_song.lyrics = <<-EOF.gsub(/\n+/, " ").strip
Every step is moving me up
Moving its moving me up
This is how we walk on the moon
EOF

puts bowie_song.inspect
puts favorite_song.inspect
puts "#{bowie_song.title}, by #{bowie_song.artist} is #{bowie_song.friendly_duration} long"

music_list.add_song(bowie_song)
music_list.add_song(favorite_song)

puts "Your Music List has #{music_list.duration} Seconds of Entertainment."
puts "Your Songs"
puts "-"*40
music_list.songs.each do |song|
	puts song
end
puts "-"*40
puts "Let's Play the Songs"
music_list.shuffle


