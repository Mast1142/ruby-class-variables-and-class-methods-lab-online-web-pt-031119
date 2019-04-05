require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @@genre_count = Hash[@@genres.collect {|x,count| [x,count]}]
  end

  def self.artist_count

  end
end
