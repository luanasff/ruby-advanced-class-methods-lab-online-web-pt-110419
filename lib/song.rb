
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
    song.save 
    song
   end  



    def self.new_by_name(name)
      song = self.new 
      song.name = name 
      song
    end 

  
    def self.create_by_name(name)
      song=self.new
      song.name = name 
      song.save
      song 
      end 
     
   
    def self.find_by_name(name)
      @@all.find{|person| person.name == name}
    end
 
      
   
     
     
    def self.find_or_create_by_name(name)
      self.find_by_name(name) || self.create_by_name(name)
    end 
    
     
     
    def self.alphabetical
      @@all.sort_by{|song|song.name}
    
    end 
  
  
  
    def self.new_from_file_name(mp3_file) 
     song = self.new 
    song.name = mp3_file.split(/[^a-zA-Z\s]|\s-\s/)[1] 
    song.artist_name = mp3_file.split(/[^a-zA-Z\s]|\s-\s/)[0]
    c
  end 
  
      
    end 
  
  
  
    def self.create_from_filename
      
      
    end 
  
 
      
    def self.destroy_all
      self.all.clear
    end

     
     
end 


