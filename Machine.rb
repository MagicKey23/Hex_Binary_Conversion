require_relative "Hex"
require_relative "Binary"

class Machine

    def run_binary(num)
          
            puts "Select the type of conversion\n 1. Binary to Decimal \n 2. Decimal to Binary"
            selector2 = gets.chomp.to_i
            if selector2 > 2 || selector2 < 1
                puts "Invalid choice, please select again"
                run_binary(num)
            end
        
            init = Binary.new

            if selector2 == 1

            result = init.convert_binary_to_decimal(num)

            elsif selector2 == 2


            result = init.convert_to_binary(num)

            end
            puts "The result is: #{result}"

            
    end

    def run_hex(num) 
            init = Hexdecimal.new
            result = init.convert_to_hex(num)
            puts "The result is: #{result}"
    end

    def start 

        puts "Please enter the number to convert"

        input = gets.chomp.to_i

        puts "Please select which conversion do you want\n1. Binary \n2. Hexdecimal"

        selector = gets.chomp.to_i

        while selector > 2 || selector < 1
            puts "Invalid option please select again"
            selector = gets.chomp.to_i
        end

        if selector == 1 
            run_binary(input)
        elsif selector2 == 2
            run_hex(input)
        end

    end 

if $PROGRAM_NAME == __FILE__
     machine = Machine.new  
     machine.start
end

