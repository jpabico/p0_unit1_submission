# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge by myself

# 1. First Person's solution I liked - Misterdamon

# What I learned from this solution

# 1) I don't need to assign a variable to self.length since its value 
# never changes

# 2) I can use << instead of + to concatenate strings

# 3) elsif isn't needed...else will do

# Copy solution here:
# class Array 

# 	def pad!(padSize, padVal = nil)
# 		if padSize <= self.length
# 			self
# 		else 
# 			(padSize - self.length).times do self << padVal end
# 			self
# 		end
# 	end

# 	def pad(padSize, padVal = nil)
# 		if padSize <= self.length
# 			Array.new(self)
# 		else
# 			self + Array.new(padSize - self.length, padVal)
# 		end
# 	end

# end

# 2. Second Person's solution I liked - zmitton

# What I learned from this solution

# 1) Code can be short and sweet!

# 2) An array can be padded using the conditional "until"

# 3) Don't use destructive method on original array, but rather 
# on a clone of itself using #clone

# 4) Promote D.R.Y. by calling one method from inside another if 
# the two functions share similar characteristics

# Copy solution here:
# class Array
#     def pad!(minlength, fillValue = nil)
#         self << fillValue until self.length >= minlength
#         return self
#     end
    
#     def pad(minlength, fillValue = nil)
#         self.clone.pad!(minlength, fillValue)
#     end
# end

# 3. My original solution:

# class Array
#   def pad(min_size,opt_pad=nil)
#     new_array = [] + self
#     array_length = self.length
#     pad_size = min_size - array_length
#     if min_size <= array_length
#       new_array
#     else
#       pad_size.times { new_array.push(opt_pad) }
#     end
#     new_array
#   end

#   def pad!(min_size,opt_pad=nil)
#     pad_size = min_size - self.length
#     if min_size <= self.length
#       self 
#     else
#       pad_size.times { self.push(opt_pad) }
#     end
#     self
#   end
# end

# 4. My refactored solution:
class Array
	def pad!(min_size, opt_pad = nil)
		self << opt_pad until self.length >= min_size
		return self
	end

	def pad(min_size, opt_pad = nil)
		self.clone.pad!(min_size, opt_pad)
	end
end

# 5. Reflection
# There are some really smart people in this class.  I had a difficult
# time trying to figure out a "simple" and "rough" solution to this
# problem with a partner.  But to see that sometimes 1 head can be better 
# than 2 is amazing.  It's one thing to understand the concepts after
# reading about them (e.g. DRY - don't repeat yourself, makes sense, 
# don't do more work than you have to and don't clutter up your script
# with repetitive code).  But to see someone apply it and really 
# demonstrate what D.R.Y. means broadens my understanding and makes
# me more aware of what sort of things I can use myself in the future.
