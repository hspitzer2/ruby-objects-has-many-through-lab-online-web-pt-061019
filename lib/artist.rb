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
    Song.new(name, self, genre)
    song(name,self,genre)
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
