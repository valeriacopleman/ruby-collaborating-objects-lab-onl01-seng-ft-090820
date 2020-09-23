class Song 
  
  attr_accessor :artist, :name 
  
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
  
   def artist_name
    
      self.artist.name
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end
 
  
  
end