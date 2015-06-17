class Song #capitalized since all objects are constants

	def set_title=(song_title)
		@song_title = song_title
	end

	def get_title
		return @song_title
	end

	def set_singer=(singer_name)
		@singer_name = singer_name
	end

	def get_singer
		return @singer_name
	end

	def about_song
		return "#{@song_title} is performed by #{@singer_name}."
	end
end

my_song = Song.new
my_song.set_singer = "Misty Edwards"
my_song.set_title = "You Won't Relent"

puts my_song.about_song

puts my_song.inspect