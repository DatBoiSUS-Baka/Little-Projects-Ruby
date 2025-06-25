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

def write_file(tasks, filename = "List.txt")
  File.open(filename, 'w') do |file|
    tasks.each do |task|
      file.puts task
    end
  end
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

  # Read from the 'List.txt' file and put it into an array
  puts "\nTasks to do:"
  tasks = read_file("List.txt")
  puts tasks

  # Input from the user
  puts "\nWhat would you like to do? (Add, Edit, Delete, End)"
  input = gets.chomp.capitalize

  if input == "End" # The program ends if the user typed 'End'
    running = false
  elsif input == "Add" # Takes user input and append it to the list in 'List.txt'

    puts "Input your task jusseyo"
    temp = gets.chomp
    rows = tasks.count
    append_file("#{rows + 1}. #{temp}")
    
  elsif input == "Edit" # Takes user input for the index and the new text, then write over the file with the new tasks

    puts "Which task would you like to edit?"
    index = gets.chomp.to_i

    if index > 0 && index <= tasks.length
      puts "Your new edited task"
      temp = gets.chomp
      tasks[index - 1] = "#{index}. #{temp}"
      write_file(tasks)
    end
  
  elsif input == "Delete" # Takes user input for the index and deletes the task, then write over the file with the updated tasks

    puts "Which task would you like to delete?"
    index = gets.chomp.to_i

    if index > 0 && index <= tasks.length
      tasks.delete_at(index - 1)
      if !tasks[index - 1]
        write_file(tasks)
        puts "Deletion Success"
      else
        puts "An Error Happened"
      end
    end

  end
end