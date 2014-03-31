# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# array of numbers and strings
# What is the output? (i.e. What should the code return?)
# An array of the most frequent values from our input
# What are the steps needed to solve the problem?
# define a method that takes an array
# scan each object in the array and create a counter that tallies 
#    how many times each object appears
# Array ---> Scan [0] ---> check if new array has this object 
#    already --> if yes, increase a method counter by one, 
#    if no, create a count for that object in our new array (object_count)

# # 2. Initial Solution

def mode(array)
    freqs = Hash.new(0)
    array.each { |element| freqs[element] +=1 }
    
    freqs = freqs.sort_by { |x,y| y }
    freqs.reverse!
    freqs.keep_if { |x,y| y == freqs[0][1] }
    freqs.flatten!
    filter = []
    for i in 0...freqs.length
    	if i%2==0
    	  filter << freqs[i]
    	end
    end
    return filter.sort

end



# nums = [2, 4, 6, 7, 8, 7, 9, 0, 2, 7, 5, 7, 3, 7, 1, 72]
# freqs = Hash.new(0)
# nums.each { |num| freqs[num] += 1 }
# freqs = freqs.sort_by {|x,y| y }
# freqs.reverse!
# puts freqs[0][0]
# freqs.each {|num, freq| puts "The number " + num.to_s + " occurs " + freq.to_s + " time(s)"}



# 3. Refactored Solution



# 4. Reflection 



