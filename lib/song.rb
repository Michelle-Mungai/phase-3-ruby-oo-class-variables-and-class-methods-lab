# song class constants
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
    genre_hash[genre] = @@genres.count(genre)
    end
    genre_hash
    end

    def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
    artist_hash[artist] = @@artists.count(artist)
        end
    artist_hash
    end
end

r1 = Song.new("Hot","Drake","Hip-hop")
puts Song.count
