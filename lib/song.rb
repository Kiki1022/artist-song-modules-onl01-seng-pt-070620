require 'pry'
require_relative '../lib/concerns/memorable.rb'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
 
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  # def find_by_name(name)
  #   self.all.detect{|a| a.name == name}
  #end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
