# ======================================================
#   Filename     : Calculator.rb
#   Programmer   : Kasyful Haq Bachariputra
#   Date         : 22 Juni 2025
#   Email        : kasyfulhaqb@upi.edu
#   Description  : A simple command line program that
#                  is able to do operations of a calculator
# ======================================================

def operations(number1, number2, type)
  # Main function for the operations
  if type == "Add"
    return number1 + number2
  elsif type == "Subtract"
    return number1 - number2
  elsif type == "Multiply"
    return number1 * number2
  elsif type == "Divide"
    return number1 / number2
  end
end

running = true
while running == true do
  puts "Ruby Calculator in CMD"
  
  puts "Please select what type of operation (Add, Subtract, Multiply, Divide)"
  type = gets.chomp.capitalize

  if type == "End"
    # Will end the program if the user chose typed "End"
    running = false
  else
    puts "Please enter the first number"
    number1 = gets.chomp.to_f
    puts "Please enter the second number"
    number2 = gets.chomp.to_f
  
    # Do the operations with the number
    result = operations(number1, number2, type)
    puts "The result is #{result}"
  end
end