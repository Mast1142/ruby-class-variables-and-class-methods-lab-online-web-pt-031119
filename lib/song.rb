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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre_count = {}
    #Hash[@@genres.uniq.collect {|x| [x, 1]}]
    @@genres.each do |genre|
      if @@genre_count.include?(genre) == true
         @@genre_count[genre] += 1
       else
         @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count

  end
end
