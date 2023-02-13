class Song
  attr_accessor :name, :artist, :genre
  @@artists=[]
  @@count=0
  @@genres=[]
  def initialize(name, artist, genre)
    @name = name
    @artist= artist
    @genre = genre
    @@count+=1
    @@artists<<artist
    @@genres<<genre
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
    categories= @@genres.uniq
    altogether = {}
    categories.map do|item|
      total= @@genres.count(item)
      altogether.store(item, total)
    end
    altogether
  end
  def self.artist_count
    @@artists.tally
  end
end
# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# sayit = Song.new("99 Problems", "Jay-Z", "pop")
# twenty = Song.new("99 Problems", "Phil", "rock")
puts Song.artist_count