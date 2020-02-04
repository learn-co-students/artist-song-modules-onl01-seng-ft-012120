module MyModule
  module Memorable
    @@all = []
  
    def reset_all
      self.all.clear
    end
  
    def count 
      self.all.count
    end
  
    def all
      @@all
    end
  
  end


  module Paramable
    def to_param
      self.name.downcase.gsub(' ', '-')
    end
  
    def initialize 
      self.class.all << self
    end
  
  end

  module Findable
  
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end
  end

end