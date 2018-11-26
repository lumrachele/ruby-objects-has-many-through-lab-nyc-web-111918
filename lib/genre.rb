class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    #iterates through all songs and finds songs that
    # belong to that genre ---> self
    Song.all.select do |song|
      song.genre == self
    end
  end


  def artists
    #iterates through genre's collection of songs
    # and collects artist that owns each song
    self.songs.collect do |song|
      song.artist
    end
  end

end
