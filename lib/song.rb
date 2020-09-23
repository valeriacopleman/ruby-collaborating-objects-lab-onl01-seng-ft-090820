class Song 
  
  attr_accessor :title, :artist 
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
   def artist_name
    if self.artist
      self.artist.name
    else 
      nil 
    end
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
 
  
  
end