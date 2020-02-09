class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  
  attr_accessor :name
  attr_reader :songs

   @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    return @@artists
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |s| add_song(s) }
  end
end