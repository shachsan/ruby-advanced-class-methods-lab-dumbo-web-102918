require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  ###create new song by name
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
      # binding.pry
  end


  ###create song and save in class variable
  def self.create_by_name(name)
    song = self.new
    song.name = name
    self.all << song
    song
  end

  ###find song by name
  def self.find_by_name(name)
    self.all.find {|song|song.name==name}
  end


  ###find or create song
  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    if song
      return song
    else
      self.create_by_name(name)
    end

  end

  def

end
