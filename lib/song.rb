class Song 
  
  attr_accessor :artist, :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end
 
  
  
end