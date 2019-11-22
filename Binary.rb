class Binary
# Divide the number by 2.
# Get the integer quotient for the next iteration.
# Get the remainder for the binary digit.
# Repeat the steps until the quotient is equal to 0.

   BINARY = {0=>0, 1=>1} 

    def isNegative?(n)
        if n < 0 
            true 
        else 
            false
        end 
    end
    
    
    def is_binary?(decimal)
        if BINARY.has_key?(decimal)
        true
        else
        false
        end
    end

    def binary(format, isNegative) 
        isNegative ? format[0] = 1 : format[0]= 0
        return "0b" + format.join("")
    end

    def convert_to_binary(decimal)

        if self.is_binary?(decimal)
            return BINARY[decimal].to_s
        else
            return self.binary(self.conversion(decimal), self.isNegative?(decimal))
        end
    end

    def conversion(n)
    # Divide the number by 2.
    # Get the integer quotient for the next iteration.
    # Get the remainder for the binary digit.
    # Repeat the steps until the quotient is equal to 0.

    #base case = [n] when n is 1 or 0   
    #inductive steps  n/16   

      return [n.abs/2] + [n.abs]  if BINARY.include?(n.abs) 
      converted =[]
      remainder = n.abs % 2
      converted += [BINARY[remainder]]    
      return (conversion(n.abs/2) + converted)
    end

    
end


# hard code

 # def conversion(decimal)

    #     converted = []
    #     stop = false
    #     until stop
    #         if decimal.abs == 0
    #            stop = true
    #            converted.unshift(decimal.abs % 2)  
    #         else
    #            converted.unshift(decimal.abs % 2)
    #            decimal /= 2
    #         end         
    #     end
        
    #     self.isNegative?(decimal) ? converted[0] = 1 : converted[0] = 0 
    #     return converted.join("")
    # end
