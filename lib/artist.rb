require 'pry'
class Artist 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
       @name = name
      # @@all << self
      
        @@all << self
  end
  
  def self.all
    @@all
  end
  
   def songs
      
      
  # artist.all      
      Song.all.select {|song| song.artist == self}
       
   end  
  
  def add_song(new_song) 
    # binding.pry
      # songs.push(new_song)
      # self.songs << new_song
      new_song.artist = self
#       This instance method receives an instance of a `Song` and associates it belongs to
# _this_ `Artist` instance.

  end
  
  def self.create(name)
       self.new(name).tap {|artist| artist.save }
      # research tap method
  end

  def save
  @@all << self
  
  end
 
  def self.find_or_create_by_name(name)
  # string = name
  #   research find method 
  # @@all.find do |artist| 
  #   if artist.name == name
  #     return name
  #   else
  #     Artist.create(name)
  #     # use create method to create artist
  #   end
  
  if  @@all.find {|artist| artist.name == name } 
    return @@all.find {|artist| artist.name == name }
      
      else
        Artist.create(name)
    
   end
  end
  
  def print_songs 
  # songs
     
    # self.songs.select {|song| song.name}
     
    # self.songs.each {|song| song.name}
    
    self.songs.each {|song| puts song.name}
  end
end



# This instance methods outputs the names of all songs associated wiwith this
# `Artist` instance.





