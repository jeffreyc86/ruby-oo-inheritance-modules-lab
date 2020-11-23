require 'pry'
require './modules.rb'

class Song

  extend Modules::ClassMethods
  include Modules::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
