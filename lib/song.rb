
class Song
  attr_accessor :name, :artist_name
  @@all = []

   def initialize(name)
    @name = name
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
    @name = name 
    self.new_by_name(name)
  end
  
end 


