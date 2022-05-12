def input_students
  puts "Please enter the names of the students"
  puts "To end please press enter twice"

  students = []

  name = gets.chomp
  
  months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
    ]
  
  while !name.empty? do
    puts "what cohort?"
    cohort = gets.chomp
      while !months.include? (cohort)
        puts "Please enter a valid month"
        cohort = gets.chomp
      end
    
    students << {name: name, cohort: cohort.to_sym}
    
    if students.count == 1
      puts "Now we have 1 student"
    else
      puts "Now we have #{students.count} students"
    end
    
    name = gets.chomp
  end
  
  students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  if students.count == 1
    puts "Overall, we have one great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end

students = input_students
print_header
print(students)
print_footer(students)