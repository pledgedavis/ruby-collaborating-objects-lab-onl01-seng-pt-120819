require 'pry'
class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
  @name = name
  # @@all << self
  @artist = artist
    @@all << self
  end
  
  def self.all
   
   @@all
# binding.pry
  end
  
    def self.new_by_filename(new_song)
      
      
    end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
 
  
  
end






















