=begin 
Once you complete the previous exercise, change the way the users are displayed: 
print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts 
(the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort.
=end

students = [
  {name: "Dr. Hannibal Lecter", cohort: :june},
  {name: "Darth Vader", cohort: :june},
  {name: "Nurse Ratched", cohort: :june},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :january},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  sorted_by_cohort = {}
  
  students.each do |student|
    cohort = student[cohort]
    name = student[name]
    
    if sorted_by_cohort[cohort] == nil
      sorted_by_cohort[cohort] = []
    end
  
    sorted_by_cohort[cohort].push(students[name])
  end
  
  sorted_by_cohort.each do |cohort, name|
    puts "Students in the #{cohort} cohort:"
    puts name
  end

end

=begin
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
=end

#print_header
print(students)
#print_footer(students)