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
#

def total(array)
  array.inject(0) {|memo,n| memo + n}
end

def sentence_maker(array)
  array.join(" ").capitalize! + "."
end


# 3. Refactored Solution

# improve variable name
def total(num_array)
  num_array.inject(0) {|memo,n| memo + n}
end

# improve syntax using string interpolation
def sentence_maker(array)
  "#{array.join(" ").capitalize!}."
end

# 4. Reflection 

# This challenge was much easier to concentrate on with a partner.
# My pair partner was familiar and comfortable with the environment.
# Because of him, I was able to focus my energy mostly on coding.
# I like coding challenges.  The problem-solving aspect seems to be 
# my comfort zone.  However, I'm still not comfortable installing
# software/programs because I never know if I'm possibly screwing
# up the settings while I go through the setup.  Even after I setup
# the program, there's me having to go through an unfamiliar user
# interface or unfamiliar environment.  I know that's just part
# of being a programmer and it's somthing that I need to get used to.
# Good thing I'm getting a lot of practice.  I forced myself to figure
# out how to setup everything on my own (without asking my group
# questions like I desparately wanted to).  Add 1 point of confidence
# to me scorecard, please  =)  