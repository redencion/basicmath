module Arithmetic
  class Operations
    def initialize
    end
    def addition(a=nil,b=nil)
     raise StandardError.new 'add only integer' unless Integer(a) && Integer(b) 
     a.to_i + b.to_i
    end
    def substraction(a,b)
     raise StandardError.new 'add only integer' unless Integer(a) && Integer(b) 
      a - b
    end
  end
end
