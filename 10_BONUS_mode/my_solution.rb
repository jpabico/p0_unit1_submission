# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
nums = [2, 4, 6, 7, 8, 7, 9, 0, 2, 7, 5, 7, 3, 7, 1, 72]
freqs = Hash.new(0)
nums.each { |num| freqs[num] += 1 }
freqs = freqs.sort_by {|x,y| y }
freqs.reverse!
puts freqs[0][0]
freqs.each {|num, freq| puts "The number " + num.to_s + " occurs " + freq.to_s + " time(s)"}



# 3. Refactored Solution



# 4. Reflection 