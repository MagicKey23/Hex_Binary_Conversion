require_relative "Hex"
require_relative "Binary"

class Machine

    def start 

        puts "Please enter a decimal number"

        input = gets.chomp.to_i

        puts "Please select which converse you want\n1. Binary \n2. Hexdecimal"

        selector = gets.chomp.to_i

        if selector == 1
            init = Binary.new
            result = init.convert_to_binary(input)
        else
            init = Hexdecimal.new
            result = init.convert_to_hex(input)
            
        end
        puts result
    end 

end

if $PROGRAM_NAME == __FILE__
     machine = Machine.new  
     machine.start
end

