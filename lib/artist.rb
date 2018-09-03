class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
    @songs << song
  end

  def self.songs
    self.all.each do |artist|
      artist.songs.collect {|song| song.artist == self}
    end
  end

end
