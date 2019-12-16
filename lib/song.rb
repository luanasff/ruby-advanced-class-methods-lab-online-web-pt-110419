
class Song
  attr_accessor :name, :artist_name
  @@all = []

   def initialize(name)
    @name = name
    @songs = []
    end




  def self.all
    @@all
  end
  
  
  def save
    self.class.all << self
  end
 
 def self.create 
    song = self.new 
    song.save 
    song
  end  



    def self.new_by_name(name)
     artist_name = Artist.new(name)
     artist_name
    end 

  
end 


