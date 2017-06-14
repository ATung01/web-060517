require 'pry'
class Artist
  attr_reader :name
  @@all = []

  # Artist.new
  # <artist>
  #
  def initialize(name)
    # self.name=(name)
    @name = name

    @@all << self
  end

  def songs
    # go through all of the songs
    # and select the songs whose artist is kanye

    # self -> <kanye>
    # Song.all []
    # binding.pry
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.find_by_name(name)
    # go through all of my artists
    # and for each artist, compare the artist's name
    # to the name that I am passing through as an argument

    self.all.select do |artist|
      artist.name == name
    end
  end
  # all of the artists who have the name that I pass through

  # Artist
  def self.all
    # Artist
    # binding.pry
    @@all.first(20)
  end



  def name
    @name
  end

  # def first_name
  #   @first_name
  # end
  #
  # def last_name
  #   @last_name
  # end


end

# Pry.start

# Artist.find_by_name('kanye')
# [<@name='kanye'>]
