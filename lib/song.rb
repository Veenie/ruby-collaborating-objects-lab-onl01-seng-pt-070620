class Song
  attr_accessor :name, :artist
  
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
  
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")
    song_name = [1]
    artist = [0]
    song
  end
 
  
end