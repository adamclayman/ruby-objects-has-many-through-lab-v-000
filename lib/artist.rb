class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    self.all < self
    @songs = []
  end

  def self.all
    @@all
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    self.all.select {|song| song.artist == self}
  end

end
