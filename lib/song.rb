require 'pry'

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
  
  def self.new_by_filename(filename)
    binding.pry
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end
 
  
  
end