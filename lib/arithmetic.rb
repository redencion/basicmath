module Arithmetic
  class Operations
    def initialize
    end
    def addition(a=nil,b=nil)
      (a.to_i + b.to_i) if check_inputs?(a,b)
    end
    def substraction(a=nil,b=nil)
      (a.to_i - b.to_i) if check_inputs?(a,b)
    end
    def multiplication(a=nil, b=nil)
     (a.to_i * b.to_i)  if check_inputs?(a,b)
    end

    private
    def check_inputs?(a,b)
      true if Integer(a) and Integer(b)
    end
  end
end
