class MP3Importer
  
  attr_accessor :path 
  
  def initialize(filename)
    @path = filename  
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if { |file| file == "." || file == ".."}
    
    end 
  
  def import(list_of_filenames)
    self.files.each {|filename| Song.new_by_filename(filename)}
    Artist.all << song.artist unless Artist.all.include?(song.artist)
  end

end