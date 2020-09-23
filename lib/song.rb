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
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
  end
 
  
  
end