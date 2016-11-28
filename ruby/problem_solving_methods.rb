
def search_array(array,integer)
	index = 0
	while index < array.length 
		if array[index]==integer
			return index
		else
			nil
		end
			index += 1
	end
end
arr = [42, 89, 23, 1]
p search_array(arr, 1)

def fib(number)
	array = [0,1]
	while array.length < number
		array[array.length] = array[-2]+array[-1]
	end
	return array

	end
fib(6)

fib(100)[-1]

#Insertion Method Pseudocode:
#
# - Define a method that takes an array of integers as a parameter.
# - Iterate through the array of integers by defining a range that
#   starts at the zero index and goes up to the last integer in the
#   array.
# - The integers in the array will be sorted in place:
#   - At each index (starting with 1), the method checks the integer
#     value against the largest value in the sorted list (which would
#     be the value to the left of it as indices are checked)
#   - If the integer is larger than the number to the left, it leaves
#     in place and moves to the next integer
#   - If smaller, it finds the correct position in the sorted list,
#     shifts the larger values up and inserts the integer in the correct
#     position
# - After iterating through the entire array it returns the sorted
#   array# Sorting Method:def insertion_sort(array)
 for i in 1..(array.length - 1)
   while i > 0 && array[i-1] > array[i]
     array[i], array[i-1] = array[i-1], array[i]
     i -= 1
   end
 end
end