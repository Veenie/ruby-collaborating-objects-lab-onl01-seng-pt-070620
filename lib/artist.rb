class Artist
  attr_accessor :name
  @@all = []
 
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  

  
  def print_songs
    songs.each {|song| puts song.name}
  end
 
end