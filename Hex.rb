class Hexdecimal
# Take in a decimal number
# Get the integer quotient for the next iteration.
# Get the remainder for the Hexdecimal Digit.
# Repeat the steps until the quotient is equal to 0.


 def convert_to_hex(decimal)

        if self.is_hex?(decimal)
            if decimal < 10
                return HEX_TABLE[decimal]
            elsif decimal >= 10 && decimal < 16
                return HEX_TABLE[decimal]
            end
        else
            return self.hex(self.conversion(decimal), self.isNegative?(decimal))
        end
    end

   protected

   HEX_TABLE =  {
       1 => 1,
       2 => 2,
       3 => 3,
       4 => 4,
       5 => 5,
       6 => 6,
       7 => 7,
       8 => 8,
       9 => 9,
       10 => "A",
       11 => "B",
       12 => "C",
       13 => "D",
       14 => "E",
       15 => "F"
   }


   def isNegative?(n)
        if n < 0 
            true 
        else 
            false
        end 
    end
    

    def is_hex?(decimal)
        if HEX_TABLE.has_key?(decimal)
        true
        else
        false
        end
    end

    def hex(format, isNegative) 
        isNegative ? format.unshift("-") : format.unshift("+")
        return "0x" + format.join("")
    end

   


    def conversion(n)
    # Take in a decimal number
    # Get the integer quotient for the next iteration.
    # Get the remainder for the Hexdecimal Digit.
    # Repeat the steps until the quotient is equal to 0.

    #base case = [n] when n is  HEX_table include N
    #inductive steps  n/16   
        
    return [HEX_TABLE[n.abs]] if HEX_TABLE.include?(n.abs)

    remainder = n.abs % 16  

    converted = [HEX_TABLE[remainder]]
    
    return conversion(n.abs/16) + converted    

    end

    
end

