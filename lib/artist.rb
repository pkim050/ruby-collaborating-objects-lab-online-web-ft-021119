require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def name=(artist_nick)
    @name = artist_nick
  end
  
  def add_song(class_song)
    @songs << class_song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    @@all.each {|element| return element.name if element.name.include?(name)}
    return self.new(name)
  end
  
  def print_songs
    @songs.each {|element| puts element.name}
  end
end