class Artist
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

  def songs
    #iterates through all songs and finds
    #songs that belong to that artist, which is self
    #use select
    Song.all.select do |song|
        song.artist == self
    end

  end

  def genres
    #iterates over this artists' songs and collects genre
    #of each song
    self.songs.collect do |song|
      song.genre
    end
  end

end
