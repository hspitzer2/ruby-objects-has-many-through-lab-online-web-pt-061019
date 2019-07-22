class Genre
  require "pry"

attr_reader :name, :artist
attr_accessor :song

  @@all = []

  def initialize(name)
    @name = name
    @song = song
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Songs.all.select do |songs|
      songs.artists == self
    end
  end

  

  def artisits
    Song.all.map do |songs|
      songs.artist
    end
  end
end
