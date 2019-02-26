require 'pry'
class MP3Importer
  attr_accessor :name, :files
  
  def initialize(pathway)
    @name = pathway
    d = Dir.new(pathway)
    @files = []
    #binding.pry
    d.each {|element| @files << element if element.include?(".mp3")}
  end
  
  def path
    self.name
  end
  
  def import
    @files.each {|element| Song.new_by_filename(element)}
  end
end