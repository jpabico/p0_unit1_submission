# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# define method called "median" that takes one parameter (myArray)
# find size of array
# sort array by comparing value of each element (switch if out of order)
# calculate median of array with odd-number length (middle number)
# calculate median of array with even-number length (average of 2 middles)

# 2. Initial Solution

# def median(myArray)
# 	n = myArray.length

# 	# sort array
# 	for i in 0...(n-1)
# 		for j in 1..(n-1)
# 			if myArray[j-1] > myArray[j]
# 				temp = myArray[j]
# 				myArray[j] = myArray[j-1]
# 				myArray[j-1] = temp
# 			end
# 		end
# 	end

# 	# find median
# 	if (n%2==0)
# 		med = (myArray[(n/2)-1] + myArray[n/2]).to_f/2
# 		return med
# 	else
# 		return myArray[(n-1)/2]
# 	end
# end

# 3. Refactored Solution

def median(myArray)
	n = myArray.length

	myArray.sort!

	if (n%2==0)
		return (myArray[(n/2)-1] + myArray[n/2]).to_f/2
	end
		return myArray[(n-1)/2]
end

# 4. Reflection 