class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @genre_songs = []
  end
  
  def self.all()
    @@all
  end
  
  def new_song(name, artist)
    my_song = Song.new(name, artist, self)
    @genre_songs << my_song
    return my_song
  end
  
  def songs()
     Song.all.select do |song|
       song.genre == self 
     end
  end
  
  def artists()
    songs().collect {|song| song.artist}
  end    
  
end