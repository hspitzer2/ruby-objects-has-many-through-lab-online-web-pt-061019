class Artist
  attr_accessor :name, :song, :genre

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
    song
  end

  def songs
    Song.all.select do |song|
      songs.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end
end
