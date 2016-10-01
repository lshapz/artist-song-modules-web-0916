require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods


  @@songs = []

  # def initialize
  #   @self.class.all << self
  # end

  def artist=(artist)
    @artist = artist
  end
  #associates an artist with the new song

  def self.all
    @@songs
  end



  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
#again I suspect a filenmae ting 

end
