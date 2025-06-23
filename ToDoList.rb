# ======================================================
#   Filename     : ToDoList.rb
#   Programmer   : Kasyful Haq Bachariputra
#   Date         : 22 Juni 2025
#   Email        : kasyfulhaqb@upi.edu
#   Description  : A simple command line program that
#                  is able to make a todo list into a txt file
# ======================================================

def read_file(fileName)
  file = File.open(fileName, 'r')

  result = Array.new
  file.readlines.each.with_index do |line, counter|
    result.insert(counter, line)
  end

  file.close

  return result
end

def write_file(string)
  file = File.open('List.txt', 'w')

  file.write(string)

  file.close
end

def append_file(string)
  file = File.open('List.txt', 'a')

  file.puts(string)

  file.close
end

running = true

# Array for putting the to-do list
tasks = Array.new

while running == true do
  puts "Simple Ruby To-Do List"

  puts "\nTasks to do:"
  tasks = read_file("List.txt")
  puts tasks

  input = gets.chomp.capitalize
  if input == "End"
    running = false
  end
end