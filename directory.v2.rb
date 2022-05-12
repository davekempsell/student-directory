def input_students
  puts "Please enter the names of the students"
  puts "To end please press enter twice"

  students = []

  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :November}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  if students.count > 0
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def interactive_menu
  students = []
  loop do 
    puts "1. Input the students"
    puts "2. Show the students list"
    puts "9. Exit"
  
    selection = gets.chomp
  
    case selection
    when '1'
      students = input_students
    when '2'
      print_header
      print(students)
      print_footer(students)
    when '9'
      exit
    else
      puts "Please select a valid option"
    end
  end
end

interactive_menu






