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
      pattern_brackets = [/\(([0-9].*?)\)/,/\[([0-9].*?)\]/,/\{([0-9].*?)\}/]
      i = pattern_brackets[0] =~ operation ? 0 : (pattern_brackets[1]=~operation) ? 1 : 2 
      while i>=0 && operation.scan(pattern_brackets[i]).size > 0 do 
        brackets = pattern_brackets[i]
        regex_result = operation[brackets]
        result_to_operation = operation[brackets,1]
        operation.gsub!(regex_result,eval(result_to_operation).to_s)
        result = pattern_brackets[i] =~ operation
        i+=1 if result.nil? && !pattern_brackets[i+1].nil?
      end
      operation = eval(operation)
    end

    private
    def check_inputs?(a,b)
      true if Float(a) and Float(b)
    end
  end
end
