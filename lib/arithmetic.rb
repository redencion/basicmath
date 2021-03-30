module Arithmetic
  class Operations
    def initialize
    end
    def addition(a=nil,b=nil)
     check_inputs(a,b)
     (a.to_i + b.to_i)
    end
    def substraction(a,b)
      check_inputs(a,b)
      (a.to_i - b.to_i)
    end
    private
    def check_inputs(a,b)
     raise StandardError.new 'add only integer' unless Integer(a) && Integer(b) 
    end
  end
end
