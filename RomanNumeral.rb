class RomanNumeral
  attr_accessor :numbers
  
  def initialize(numbers)
    @numbers = numbers
  end
  
  
  def convert_roman_to_decimal
    roman_numbers = Hash.new
    
    #array for storing the converted roman numbers
    arr = Array.new
    roman_numbers = {"I" => 1, 
				             "V" => 5, 
				             "X" => 10, 
				             "L" => 50, 
				             "C" => 100, 
				             "D" => 500, 
				             "M" => 1000} 
				      
				             
		i = 0		           	        
    @numbers.each_char {|c|
       arr[i]= roman_numbers[c]
       i+=1
      }
      
    #choosing a big enough previous_value 
    previous_value = 5000
    total = 0
    
    #looping through the array and added values to the total number  
    for j in 0..arr.length-1
        current_value = arr[j]
        total = total + arr[j]
        
    #if the current number is bigger than the previous we subtract twice the 
    #previous_value
        if current_value > previous_value
          total = total - (2 * previous_value)
        end
          
        previous_value = current_value
   
    end
      
    puts "The Decimal value of #{@numbers} is " + total.to_s
      
  end
				
end		


if __FILE__ == $0
 r = RomanNumeral.new("VII")
 r.convert_roman_to_decimal
  
end