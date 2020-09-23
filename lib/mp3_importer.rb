class MP3Importer
  
  attr_accessor :path 
  
  def initialize(filename)
    @path = filename  
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if { |file| file == "." || file == "__"}
    
    end 
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

end