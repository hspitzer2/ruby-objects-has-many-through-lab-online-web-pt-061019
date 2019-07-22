class Artist
  attr_accessor :name, :artist, :genre

   @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.song
  end

  def songs
    Songs.all.select do |song|
      self.song.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end
end
