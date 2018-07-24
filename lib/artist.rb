class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @artist_songs = []
  end
  
  def self.all()
    @@all
  end
  
  def new_song(name, genre)
    my_song = Song.new(name, self, genre)
    @artist_songs << my_song
    return my_song
  end
  
  def songs()
    @artist_songs
  end
  
  def genres()
    @artist_songs.collect {|song| song.genre}
  end
end