require 'pry'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'


class Artist
 extend Findable::ClassMethods
 extend Memorable::ClassMethods
 include Memorable::InstanceMethods 
 include Paramable::InstanceMethods
  
  attr_accessor :name


  @@all = []

 
  def songs 
    Song.all.select {|s| s.artist == self}
  end
  
  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

 
end
