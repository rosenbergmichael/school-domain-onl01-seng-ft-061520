require 'pry'
class School 
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 

  def add_student(name, grade)
    if !roster[grade] 
    roster[grade] = []
    end   
    roster[grade] << name
  end 
 
  def grade(grade)
    roster[grade]
  end 
  
  def sort
    sorted = {}
    @roster.each do |grade, array_of_names|
    array_of_names.sort 
     sorted[grade]= array_of_names.sort
    end 
  sorted 
  end 

end 


#### Part 5.
 
#You should be able to get a sorted list of all the 
#students where the strings in the student arrays 
#are sorted alphabetically. For instance:

#```ruby
#school.sort
# => {9 => ["AC Slater", "Zach Morris"], 10 => 
#["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
#```