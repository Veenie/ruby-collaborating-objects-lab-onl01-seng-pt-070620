class Artist
  attr_accessor :name
  @@all = []
 
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
 
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs(artist_name)
    
    
  
  
 
  # other methods
 
end