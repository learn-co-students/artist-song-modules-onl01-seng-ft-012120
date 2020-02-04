require 'pry'

class Song
  extend MyModule::Memorable, MyModule::Findable
  include MyModule::Paramable
  

  attr_accessor :name
  attr_reader :artist

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
