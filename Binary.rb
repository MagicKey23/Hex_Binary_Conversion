class Binary
# Divide the number by 2.
# Get the integer quotient for the next iteration.
# Get the remainder for the binary digit.
# Repeat the steps until the quotient is equal to 0.

   BINARY = {0=>0, 1=>1} 


    def value_of_binary(n)
        return 2**n
    end

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

    def convert_binary_to_decimal(n)
        if n.to_s.length < 2 
            return n.to_s
        end

        check = n.to_s.split("").all? {|i| self.is_binary?(i.to_i)}
       
        if check 
            binary = n.to_s.split("").reverse
            i = binary.length
            sum = 0 
            while i >= 0 
                if binary[i] == "1"
                value = self.value_of_binary(i)
                    sum += value
                end
                i -= 1 
            end
            return sum.to_s
        else
            return "Not a binary number"
        end
        
        
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
#         ary-Hex-Conversion]$ ruby Machine.rb 
# Please enter the numb
    #     self.isNegative?(decimal) ? converted[0] = 1 : converted[0] = 0 
    #     return converted.join("")
    # end
