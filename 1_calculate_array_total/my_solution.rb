# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with: Kevin Kang.

# 1. Pseudocode

# define a method called "total"
# it will take one argument (an array)
# it will find the sum of the numbers in the array

# define a method called "sentence_maker"
# it will take one argument (an array)
# it will join all elements and capitalize the first word
#   and add a period at the end


# 2. Initial Solution

def total(array)
  array.inject(0) {|memo,n| memo+n}
end

def sentence_maker(array)
  array.join(" ").capitalize! + "."
end


# 3. Refactored Solution



# 4. Reflection 
