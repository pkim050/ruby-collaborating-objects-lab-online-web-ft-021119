class Song
  attr_accessor :new_by_filename, :artist, :name
  # attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  # def name=(name)
  #   @name = name
  # end
  
  # def artist=(artist_obj)
  #   @artist = artist_obj
  # end
  
  def new_by_filename(filename)
    @new_by_filename = filename
  end
  
  def self.new_by_filename(file)
    arr = []
    arr = file.split(" - ")
    temp = self.new(arr[1])
    @artist = Artist.new(arr[0])
    #temp.artist = temp2
    @artist.save
    @artist.add_song(temp)

    # binding.pry
    temp
  end
end