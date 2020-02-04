require 'pry'

class Artist
  extend MyModule::Memorable, MyModule::Findable
  include MyModule::Paramable

  attr_accessor :name
  attr_reader :songs
  

  def initialize
    super
    @songs = []
  end

  

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


end
