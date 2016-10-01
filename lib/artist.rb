require 'pry'
# require_relative '../lib/concerns/memorable'
# require_relative '../lib/concerns/findable'


class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@artists = []

  def initialize
      super
      @songs = []
  end
  #adds the new artist to the artist array, sets an empty array of songs for new artist

  def self.all
    @@artists
  end

  #lists all the artist we've ever made

  def add_song(song)
    @songs << song
    song.artist = self
  end
  #adds a new song and sets the song's artist to itself

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  #same thing but with multiple, probs as an array

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
  #looks like it's making something about the filename


end
