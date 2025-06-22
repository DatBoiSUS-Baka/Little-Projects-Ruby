# ======================================================
#   Filename     : Calculator.rb
#   Programmer   : Kasyful Haq Bachariputra
#   Date         : 22 Juni 2025
#   Email        : kasyfulhaqb@upi.edu
#   Description  : A simple command line program that
#                  is able to do operations of a calculator
# ======================================================

def operations(number1, number2, type)
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
  
  type = gets.chomp.capitalize

  running = false if type == "End"
  if type == "End"
    running = false
  else
    puts "Please enter the first number"
    number1 = gets.chomp.to_f
    puts "Please enter the second number"
    number2 = gets.chomp.to_f
  
    if type != nil
      result = operations(number1, number2, type)
      puts "The result is #{result}"
    else
      puts "Not a valid type"
    end
  end
end