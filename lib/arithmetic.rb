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
    def by_sign(operation)
      operation = operation.to_s
      pattern_brackets = /\(([0-9].*?)\)/
      numbers_inside_sign= []
      while operation.scan(pattern_brackets).size > 0  do 
        regex_result = operation[pattern_brackets]
        result_to_operation = operation[pattern_brackets,1]
        operation.gsub!(regex_result,eval(result_to_operation).to_s)
      end
      operation = eval(operation)
    end

    private
    def check_inputs?(a,b)
      true if Float(a) and Float(b)
    end
  end
end
