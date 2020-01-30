require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods, Findable
  include Paramble, Memorable::InstanceMethods

  @@songs = []

  # def initialize
  #   self.class.all << self
  # end

 

  def self.all
    @@songs
  end

 
  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
