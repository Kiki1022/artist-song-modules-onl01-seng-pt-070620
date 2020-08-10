module Findable
  
  module ClassMethods
     def find_by_name(name)
        self.all.detect{|a| a.name == name}
      end
  end
  
  # module InstanceMethods
  # def initialize(name)
  #   self.class.all << self 
  #   @name = name
  # end 

  
  
end