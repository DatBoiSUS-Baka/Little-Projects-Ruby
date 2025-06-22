# ======================================================
#   Filename     : ToDoList.rb
#   Programmer   : Kasyful Haq Bachariputra
#   Date         : 22 Juni 2025
#   Email        : kasyfulhaqb@upi.edu
#   Description  : A simple command line program that
#                  is able to make a todo list into a txt file
# ======================================================

def read_file()
  file = File.open('List.txt', 'r')

  file.readlines.each.with_index do |line, counter|
    puts (counter + 1).to_s + ": " + line
  end

  file.close
end

read_file()