students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, country: "UK"},
  {name: "Darth Vader", cohort: :november, country: "USA"},
  {name: "Nurse Ratched", cohort: :november, country: "USA"},
  {name: "Michael Corleone", cohort: :november, country: "France"},
  {name: "Alex DeLarge", cohort: :november, country: "Germany"},
  {name: "The Wicked Witch of the West", cohort: :november, country: "UK"},
  {name: "Terminator", cohort: :november, country: "USA"},
  {name: "Freddy Krueger", cohort: :november, country: "Bahrain"},
  {name: "The Joker", cohort: :november, country: "Canada"},
  {name: "Joffrey Baratheon", cohort: :november, country: "USA"},
  {name: "Norman Bates", cohort: :november, country: "UK"}
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort), born in #{student[:country]}."
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)