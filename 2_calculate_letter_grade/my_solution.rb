# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def get_grade (array)
	result = 0
	array.each {|x| result += x}
	average = result / (array.length)
	
	case average
      when 90..100
      return "A"
     when 80...90
      return "B"
     when 70...80
      return  "C"
     when 60...70
      return  "D"
     else
      return  "F"
   end
	
end


# 3. Refactored Solution



# 4. Reflection 

