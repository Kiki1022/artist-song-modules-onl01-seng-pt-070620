require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'

class Artist
 extend Findable::ClassMethods
 extend Memorable::ClassMethods
 include Memorable::InstanceMethods 
 #include Findable::InstanceMethods
  attr_accessor :name
  #attr_reader :songs

  @@all = []

  # def initialize
  #   @@artists << self
  #   @songs = []
  #end
  def songs 
    Song.all.select {|s| s.artist == self}
  end
  
  def self.all
    @@all
  end

  def add_song(song)
    #@songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
