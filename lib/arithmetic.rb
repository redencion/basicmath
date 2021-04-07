module Arithmetic
  class Operations
    def initialize
    end
    def addition(a=nil,b=nil)
      sprintf("%5.1f", (a.to_f + b.to_f)).to_f  if check_inputs?(a,b)
    end
    def substraction(a=nil,b=nil)
      sprintf("%5.1f", (a.to_f - b.to_f)).to_f if check_inputs?(a,b)
    end
    def multiplication(a=nil, b=nil)
      sprintf('%5.1f',a.to_f * b.to_f).to_f  if check_inputs?(a,b)
    end
    def division(a=nil, b=nil)
      sprintf('%5.1f',(a.to_f / b.to_f)).to_f  if check_inputs?(a,b)
    end
    def expo(a=nil, b=nil)
     sprintf('%5.1f', (a.to_f ** b.to_f)).to_f if check_inputs?(a,b) 
    end
    def log(a=nil, base=nil)
      sprintf("%5.1f",Math.log(a,base)).to_f if check_inputs?(a,base)
    end

    private
    def check_inputs?(a,b)
      true if Float(a) and Float(b)
    end
  end
end
