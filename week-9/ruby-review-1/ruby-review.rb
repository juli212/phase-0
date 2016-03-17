# Pseudocode
# Create a way to initialize a song and artist class
# IF the song and artist exist in the list
#   RETURN list
# ELSE 
#   Add song and artist to the song list

# Create a way to add songs to a playlist class
#   Make an empty playlist array
#   ADD all songs to the playlist
#   Print playlist

# Define method add for Playlist class
  #ADD songs to playlist from the songs class

# Define a method that counts the number of tracks in the playlist
#   print the number of songs in the playlist by length

# Define a method that takes a song name as input and 'plays' the song.
#  print song name " is playing"

# Define a method that removes a given song
#   IF the song exists in the playlist
#     Delete the song
# 
# Define a method that checks if a song is included in the playlist
#  Search each song in the playlist for a matching title
  # IF the song is found
  #   Return true
  # ELSE 
  #   Return false

# Define a method that 'plays' all songs
#   Rotate through all the songs
#     Print which songs are playing at the time
#
# Initial Solution
# class Song
# attr_writer :song, :artist
# attr_reader :song, :artist
  
#   def initialize(song, artist)
#     @song = song
#     @artist = artist
#   end
  
#   def play
#     puts "#{song} is playing"
#   end
  
# end


# class Playlist 
# attr_reader :song, :artist
  
#   def initialize(*song)
#     #@song = song
#     @playlist_tracks = [song]
#   end

#   def add(*song)
#     # @song.each do |song|
#     @playlist_tracks.push(song)
#   end

#   def num_of_tracks
#     @playlist_tracks.flatten!
#     @playlist_tracks.length
#   end
  
#   def remove(song)
#     if song == @song
#       @playlist_tracks.delete(@song)
#     end
  
#    p @playlist_tracks
#   end 

#   def includes?(song)
    
#     @playlist_tracks.each do |title|
#       if song.song == title.song 
#         return true
#       end
#     end
#   end
  
#   def play_all
#   @playlist_tracks.each do |title|
#     puts title.song + " is playing!"
#     sleep(0.5)
#     end
#   end
  
#   def display
#     puts "  PLAYLIST"
#     puts "~~~~~~~~~~~~~"
#     @playlist_tracks.each do |title|
#       puts title.song + " by " + title.artist
#     end
#   end
# end
 
# Refactored Solution

class Song
attr_accessor :song, :artist

  
  def initialize(song, artist)
    @song = song
    @artist = artist
  end
  
  def play
    puts "#{song} is playing"
  end
  
end


class Playlist 
attr_accessor :song, :artist
  
  def initialize(*song)
    @playlist_tracks = [song]
  end

  def add(*song)
    @playlist_tracks.push(song)
  end

  
  def num_of_tracks
    @playlist_tracks.flatten!.length
  end
  
  def remove(song)
    @playlist_tracks.delete_if {|title| song.song == title.song}
  end 

  def includes?(song)
    @playlist_tracks.include?(song)
  end
  
  def play_all
  @playlist_tracks.each do |title|
    puts title.song + " is playing!"
    sleep(0.5)
    end
  end
  
  def display
    puts "  PLAYLIST"
    puts "~~~~~~~~~~~~~" 
    @playlist_tracks.each do |title|
      puts title.song + " by " + title.artist
    end
  end
end

# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")


my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)


lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# Reflect: 
=begin
What concepts did you review in this challenge?
  Writing and initializing a class plus methods. Instance methods and variables. Attribute accessors.

What is still confusing to you about Ruby?
  Attribute accessors are still a bit confusing to me but I am going to review them. I am not sure exactly what is happening when I use them but I think I just need to experiment with them a little bit. We also had some confusion in this exercise about when our instance variables worked and when they did not.

What are you going to study to get more prepared for Phase 1?
  I will review this challenge and definitely do the car class challenge to practice writing classes.
=end
