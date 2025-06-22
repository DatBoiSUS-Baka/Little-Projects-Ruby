hello = "hello world".upcase
name = "ATEEZ"
puts "Hello, #{name}"

# Contoh cara input di ruby (chomp untuk menghapus \n yang ada di belakang string)
name2 = gets.chomp
puts name2

# If statement in ruby
if 8 < 10
    puts "Im the drama"
end

puts "I bring all the drama" if 2 > 1 # One line syntax untuk if yang hanya mengerjakan satu baris kode

# Switch case statement in ruby
grade = "F"

did_i_pass = case grade
    when "A" then "Anjay"
    when "C" then "Alamak perbatasan"
    when "F" then "Ga lulus anjay"
    else "Yaudahlah ya"
end

puts did_i_pass

# Oh my god is this reallll!?!?!?!??!