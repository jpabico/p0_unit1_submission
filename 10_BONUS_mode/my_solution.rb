# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Eoin McMillan

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

# def mode(array)
#     freqs = Hash.new(0)
#     array.each { |element| freqs[element] +=1 }
    
#     freqs = freqs.sort_by { |x,y| y }
#     freqs.reverse!
#     freqs.keep_if { |x,y| y == freqs[0][1] }
#     freqs.flatten!
#     filter = []
#     for i in 0...freqs.length
#     	if i%2==0
#     	  filter << freqs[i]
#     	end
#     end
#     return filter.sort

# end


# 3. Refactored Solution

def mode(array)
    freq = Hash.new(0)
    array.each { |element| freq[element] +=1 } # create hash object:frequency
    freq = freq.sort_by { |x,y| y }.reverse! # sort-largest value frequency 1st
    freq.keep_if { |x,y| y == freq[0][1] }.flatten!.uniq # keep keys w/largest values
    return freq.select {|x| freq.index(x).even?}.sort #sort only the keys
end

# 4. Reflection 
# This was a difficult problem to FINISH.  Starting it was no problem.
# Luckily, I worked with a partner who was meticulous, resourceful and
# a great problem solver.  We were able to keep track of each number and 
# its frequency from the start. The problem after that was we weren't 
# always sure about our answer format after adding additional code (e.g. 
# "What do we have now? A new array? The original array? A hash? A 
# sorted array?")  We had to look at the spec a few times to figure out
# where we were going wrong.  It helped that my partner for this challenge
# had the insight to test and print the output of each additional line of
# code we added to our existing skeleton.  


