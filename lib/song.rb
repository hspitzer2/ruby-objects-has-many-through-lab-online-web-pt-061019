class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def genre
    self.genre # use to be @genre
  end

  def artist
    self.artist # used to be @artist
  end
end
