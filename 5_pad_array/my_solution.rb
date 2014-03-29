# U1.W3: Pad an Array!

# I worked on this challenge with: Kevin Kang

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# 1. Pseudocode

# define an Array#pad method that accepts minimum size integer x, and an 
# optional pad value y as parameters if the array(ex.[1,2,3]) is less 
# than x(ex.5) return a new array with original minimum length x(ex.[1,2,3,y,y]]
# if x is less than or equal to Array size than return original array
# define a Array#pad! method that accepts minimum size integer and an 
# optional pad value as parameters
#  should be the same as Array#pad but minipulates the original array


# 2. Initial Solution
# class Array
#   def pad(min_size,opt_pad=nil)
#     new_array =  Array.new() + self
#     array_length = self.length
#     pad_size = min_size - array_length
#     if min_size <= array_length
#       return new_array
#     elsif min_size > array_length
#       pad_size.times do
#         new_array.push(opt_pad)
#       end
#       return new_array
#     end
#   end
  
#   def pad!(min_size,opt_pad=nil)
#     extra = min_size - self.length
#     if min_size <= self.length
#       self 
#     elsif min_size > self.length
#       extra.times do
#         self.push(opt_pad)
#       end
#       self
#     end
#   end
# end


# 3. Refactored Solution
class Array
  def pad(min_size,opt_pad=nil)
    new_array = [] + self
    array_length = self.length
    pad_size = min_size - array_length
    if min_size <= array_length
      new_array
    else
      pad_size.times { new_array.push(opt_pad) }
    end
    new_array
  end

  def pad!(min_size,opt_pad=nil)
    pad_size = min_size - self.length
    if min_size <= self.length
      self 
    else
      pad_size.times { self.push(opt_pad) }
    end
    self
  end
end


# 4. Reflection 
# This was a difficult challenge in that the last two errors we had were hard
# to solve.  The solution didn't become apparent to us until we looked at the
# code in the spec and noticed that the object id was being used as part of the
# test.  It wouldn't have occurred to us otherwise that anything functional was
# different about our code before and after solving for the last 2 errors.  
# I guess I am confused about why it matters and how would I know that 
# something like that needs to be done out in the "real world"?  I never would
# have thought of that.  I was lucky that I had a smart partner that realized
# what was going on and how we could get passed it.  With respect to rest of the
# challenge, I thought it was fair (medium difficulty).  If it weren't for the
# last sticking point about the object id, I would have found this to be an
# interesting and fun exercise.  Instead, I found it to be frustrating and
# somewhat discouraging.